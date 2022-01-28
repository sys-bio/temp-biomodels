import libsbml
import urllib
from os import replace

def fixNanoMolar(file):
    doc = libsbml.readSBMLFromFile(file)
    model = doc.getModel()
    for s in range(model.getNumSpecies()):
        species = model.getSpecies(s)
        if species.getSubstanceUnits() == "nanoMolar":
            species.setSubstanceUnits("nanomole")
    nm = model.getUnitDefinition("nanoMolar").clone()
    nm.setName("nm")
    nm.setId("nanomole")
    nm.unsetMetaId()
    nm.removeUnit(1)
    nm.getUnit(0).unsetMetaId()
    model.addUnitDefinition(nm)
    libsbml.writeSBMLToFile(doc, file)

    # The original unit definition, for reference:
    """
      <unitDefinition id="nanoMolar" metaid="_476810" name="nM">
        <listOfUnits>
          <unit kind="mole" metaid="_476822" scale="-9"/>
          <unit exponent="-1" kind="litre" metaid="_476834"/>
        </listOfUnits>
      </unitDefinition>
    """


def fixSBO(file):
    doc = libsbml.readSBMLFromFile(file)
    model = doc.getModel()
    for p in range(model.getNumParameters()):
        param = model.getParameter(p)
        if param.getSBOTerm() == 345:
            param.unsetSBOTerm()
    for r in range(model.getNumReactions()):
        rxn = model.getReaction(r)
        if rxn.getSBOTerm() == 610:
            rxn.unsetSBOTerm()
    libsbml.writeSBMLToFile(doc, file)


upgrade_to_l2v4 = ["BIOMD0000000051", "BIOMD0000000060", "BIOMD0000000064", "BIOMD0000000096", "BIOMD0000000097",
                   "BIOMD0000000164", "BIOMD0000000200", "BIOMD0000000207", "BIOMD0000000425", "BIOMD0000000437",
                   "BIOMD0000000508", "BIOMD0000000509", "BIOMD0000000584", "BIOMD0000000585", "BIOMD0000000831", ]

make_boundary = {
    "BIOMD0000000344": ("MODEL1005280000_moderatestress.xml", "ROS")
}

particular_fixes = {
    "BIOMD0000000439": fixNanoMolar,
    "BIOMD0000000479": fixNanoMolar,
    "BIOMD0000000631": fixSBO,
}

def fixPubmedId(file, pmid, id):
    if int(id[-5:]) > 1044:
        raise NotImplementedError("The pubmed ID substitutions have not been checked for biomodels greater than 1044.  Unknown id", pmid, "in biomodel", str(id))
    pmid2 = ""
    if pmid == "[PMID]":
        pmid2 = "24354351"
    elif "[" in pmid:
        pmid2 = pmid.replace("[", "")
        pmid2 = pmid2.replace("]", "")
    elif "PMID:" in pmid:
        pmid2 = pmid.replace("PMID:", "")
    elif pmid == "---":
        pmid2 = "24005054"
    else:
        raise NotImplementedError("Unknown problem pubmed ID", pmid)
    url = "https://pubmed.ncbi.nlm.nih.gov/" + pmid2
    try:
        if urllib.request.urlopen(url).getcode() > 400:
            raise NotImplementedError("Unknown problem pubmed ID", pmid)
    except:
            raise NotImplementedError("Unknown problem pubmed ID", pmid)
    assert(".xml" in file)
    tmpname = file.replace(".xml", ".tmp")
    orig = open(file, "r")
    new = open(tmpname, "w")
    for line in orig:
        if pmid + " " in line:
            line = line.replace(pmid + " ", pmid2)
        if pmid in line:
            line = line.replace(pmid, pmid2)
        new.write(line)
    orig.close()
    new.close()
    replace(tmpname, file)
    
    


def run(id, sbml_files):
    """ Fix invalid SBML

    * Fix discovered validation errors in SBML files, including
    * unit errors, boundary conditions, and SBO terms.

    Args:
        id (:obj:`str`): the particular
        sbml_files (:obj:`list`): list of SBML files in the directory
    """
    if id in upgrade_to_l2v4:
        for file in sbml_files:
            doc = libsbml.readSBMLFromFile(file)
            doc.setLevelAndVersion(2, 4, strict=False)
            libsbml.writeSBMLToFile(doc, file)
    elif id in make_boundary:
        (cfile, sid) = make_boundary[id]
        for file in sbml_files:
            if cfile in file:
                doc = libsbml.readSBMLFromFile(file)
                species = doc.getModel().getSpecies(sid)
                species.setBoundaryCondition(True)
                libsbml.writeSBMLToFile(doc, file)
    elif id in particular_fixes:
        for file in sbml_files:
            particular_fixes[id](file)
    #Now fix annotations:
    for file in sbml_files:
        # print(file)
        f = open(file, "r")
        bad_pmids = []
        for line in f:
            lvec = line.strip().split()
            for word in lvec:
                if "identifiers.org" in word:
                    # print(word)
                    if "pubmed" in word:
                        for charstr in word.split('"'):
                            if "pubmed" in charstr:
                                charvec = charstr.strip("'>/").split("/")
                                pmid = charvec[-1]
                                assert charvec[-2] == "pubmed"
                                assert charvec[-3] == "identifiers.org"
                                assert charvec[-4] == ""
                                assert "http" in charvec[-5]
                                assert(len(pmid)>0)
                                url = "https://pubmed.ncbi.nlm.nih.gov/" + pmid
                                try:
                                    if urllib.request.urlopen(url).getcode() > 400:
                                        bad_pmids.append(pmid)
                                        print("Bad PubMed ID", pmid, "in", file)
                                except:
                                        bad_pmids.append(pmid)
                                        print("Bad PubMed ID", pmid, "in", file)
        f.close()
        for bad_pmid in bad_pmids:
            fixPubmedId(file, bad_pmid, id)
             
