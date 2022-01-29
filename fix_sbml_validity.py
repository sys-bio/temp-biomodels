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
    

def fixIdentifiersNS(file, oldns, id):
    newns = ""
    if oldns == "obo.go" or oldns == "go.ref":
        newns = "go"
    elif oldns=="obo.chebi":
        newns = "chebi"
    elif oldns=="obo.fma" or oldns=="obo.FMA":
        newns = "fma"
    elif oldns=="obo.pw":
        newns = "pw"
    elif oldns=="obo.pato":
        newns = "pato"
    elif oldns=="obo.bto":
        newns = "bto"
    elif oldns=="biomodels.sbo":
        newns = "sbo"
    elif oldns=="psimod" or oldns == "psi-mod" or oldns=="obo.psi-mod":
        newns = "mod"
    elif oldns == "psimi":
        #https://github.com/identifiers-org/identifiers-org.github.io/issues/190 for adding this.
        return
    elif oldns == "bind":
        #??
        return
    elif oldns == "omim":
        #This looks like it used to be there?  And got dropped?
        #https://github.com/identifiers-org/identifiers-org.github.io/issues/189 for trying to add it back.
        #However, leave it for now.
        return
    else:
        INVALID_IDENTIFIERS_NAMESPACES.add(oldns)
        return
        # raise NotImplementedError("Unknown identifiers wrong ns ", oldns)
        
    assert(newns in VALID_IDENTIFIERS_NAMESPACES or not checkAndAddIdentifiersNamespace(newns))

    assert(".xml" in file)
    tmpname = file.replace(".xml", ".tmp")
    orig = open(file, "r")
    new = open(tmpname, "w")
    for line in orig:
        if "identifiers.org/" + oldns in line:
            line = line.replace(oldns, newns)
        new.write(line)
    orig.close()
    new.close()
    replace(tmpname, file)
    

VALID_IDENTIFIERS_NAMESPACES = {'ncbiprotein', 'orphanet', 'unists', '3dmet', 'pubchem.compound', 'meddra', 'eco', 'ido', 'uniprot', 'cco', 'reactome', 'arxiv', 'intact', 'mod', 'narcis', 'ensembl', 'mirbase.mature', 'DOI', 'eo', 'taxonomy', 'unipathway.compound', 'sgd', 'hgnc.symbol', 'ec-code', 'chebi', 'pirsf', 'lipidmaps', 'ecogene', 'kegg.reaction', 'mamo', 'isbn', 'panther.pathway', 'biomodels.teddy', 'kegg.drug', 'brenda', 'kegg.orthology', 'obi', 'pr', 'subtiwiki', 'opb', 'modeldb', 'doi', 'pubmed', 'vario', 'uberon', 'GO', 'kegg.compound', 'insdc', 'doid', 'mirbase', 'cas', 'bto', 'ncit', 'mp', 'biomodels.db', 'neurolex', 't3db', 'hp', 'chembl.compound', 'pdb-ccd', 'tcdb', 'cl', 'pw', 'omit', 'unigene', 'ncim', 'envo', 'bao', 'efo', 'pato', 'sbo', 'biomodels.kisao', 'go', 'po', 'kegg.pathway', 'pubchem.substance', 'ncbigene', 'so', 'uniprot.isoform', 'fma', 'kegg.genes', 'icd', 'unipathway.reaction', 'interpro'}
INVALID_IDENTIFIERS_NAMESPACES = set()

def checkAndAddIdentifiersNamespace(ns):
    url = "https://identifiers.org/" + ns
    try:
        if urllib.request.urlopen(url).getcode() > 400:
            return True
    except:
            return True
    VALID_IDENTIFIERS_NAMESPACES.add(ns)
    # print("Current identifiers namespaces:", VALID_IDENTIFIERS_NAMESPACES)
    return False

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
        bad_pmids = set()
        bad_identifiers_ns = set()
        for line in f:
            lvec = line.strip().split()
            for word in lvec:
                if "identifiers.org" in word:
                    for charstr in word.split('"'):
                        if "identifiers.org" in charstr:
                            charvec = charstr.strip("'>/").split("/")
                            for n in range(len(charvec)):
                                if charvec[n] == "identifiers.org":
                                    pmid = charvec[n+2]
                                    if charvec[n+1] not in VALID_IDENTIFIERS_NAMESPACES:
                                        # if checkAndAddIdentifiersNamespace(charvec[n+1]):
                                            bad_identifiers_ns.add(charvec[n+1])
                                    assert charvec[n-1] == ""
                                    assert "http" in charvec[n-2]
                                    if charvec[n+1] == "pubmed":
                                        assert(len(pmid)>0)
                                        url = "https://pubmed.ncbi.nlm.nih.gov/" + pmid
                                        try:
                                            if urllib.request.urlopen(url).getcode() > 400:
                                                bad_pmids.add(pmid)
                                        except:
                                                bad_pmids.add(pmid)
        f.close()
        for bad_pmid in bad_pmids:
            fixPubmedId(file, bad_pmid, id)
        for bad_identifiers_ns in bad_identifiers_ns:
            fixIdentifiersNS(file, bad_identifiers_ns, id)
    # print("Invalid identifiers.org namespaces:")
    # print(INVALID_IDENTIFIERS_NAMESPACES)
             
