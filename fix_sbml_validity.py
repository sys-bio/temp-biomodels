import libsbml
import urllib
import pickle
from os import replace
from biosimulators_utils.utils.identifiers_org import validate_identifiers_org_uri

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


def fixHasProperty(file):
    doc = libsbml.readSBMLFromFile(file)
    sstr = libsbml.writeSBMLToString(doc)
    sstr = sstr.replace("bqmodel:hasProperty", "bqbiol:hasProperty")
    out = open(file, "w", encoding="utf8")
    out.write(sstr)
    out.close()

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
    "BIOMD0000000647": fixHasProperty,
    "BIOMD0000000648": fixHasProperty,
    "BIOMD0000000652": fixHasProperty,
    "BIOMD0000000653": fixHasProperty,
    "BIOMD0000000654": fixHasProperty,
    "BIOMD0000000655": fixHasProperty,
    "BIOMD0000000656": fixHasProperty,
    "BIOMD0000000657": fixHasProperty,
    "BIOMD0000000755": fixHasProperty,
    "BIOMD0000000953": fixHasProperty,
    "BIOMD0000000989": fixHasProperty,
    "BIOMD0000000994": fixHasProperty,
    "BIOMD0000000995": fixHasProperty,
    "BIOMD0000000996": fixHasProperty,
    "BIOMD0000000997": fixHasProperty,
    "BIOMD0000000998": fixHasProperty,
    "BIOMD0000000999": fixHasProperty,
    "BIOMD0000001001": fixHasProperty,
    "BIOMD0000001002": fixHasProperty,
    "BIOMD0000001003": fixHasProperty,
    "BIOMD0000001006": fixHasProperty,
    "BIOMD0000001007": fixHasProperty,
    "BIOMD0000001009": fixHasProperty,
    "BIOMD0000001010": fixHasProperty,
    "BIOMD0000001019": fixHasProperty,
    "BIOMD0000001020": fixHasProperty,
    "BIOMD0000001026": fixHasProperty,
    "BIOMD0000001027": fixHasProperty,
    "BIOMD0000001028": fixHasProperty,
    "BIOMD0000001029": fixHasProperty,
    "BIOMD0000001039": fixHasProperty,
    "BIOMD0000001044": fixHasProperty,
    "BIOMD0000001045": fixHasProperty,
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
    elif "+" in pmid:
        pmid2 = pmid.replace("+", "")
    elif "PMID:" in pmid:
        pmid2 = pmid.replace("PMID:", "")
    elif pmid == "---":
        pmid2 = "24005054"
    else:
        #When running in batch, can fail URL checks for a variety of reasons unrelated to it being wrong.
        print("Skipping check for PubMed URL", "https://pubmed.ncbi.nlm.nih.gov/" + pmid)
        return
        #raise NotImplementedError("Unknown problem pubmed ID", pmid)
    url = "https://pubmed.ncbi.nlm.nih.gov/" + pmid2
    try:
        if urllib.request.urlopen(url).getcode() > 400:
            raise NotImplementedError("Unknown problem pubmed ID", pmid)
    except:
            raise NotImplementedError("Unknown problem pubmed ID", pmid)
    assert(".xml" in file)
    tmpname = file.replace(".xml", ".tmp")
    orig = open(file, "r", encoding="utf-8")
    new = open(tmpname, "w", encoding="utf-8")
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
    elif oldns=="doi.org":
        newns = "doi"
    elif oldns=="psimod" or oldns == "psi-mod" or oldns=="obo.psi-mod":
        newns = "mod"
    else:
        INVALID_IDENTIFIERS_NAMESPACES.add(oldns)
        return
        # raise NotImplementedError("Unknown identifiers wrong ns ", oldns)
        
    assert(newns in VALID_IDENTIFIERS_NAMESPACES or not checkAndAddIdentifiersNamespace(newns))
    
    assert(".xml" in file)
    tmpname = file.replace(".xml", ".tmp")
    orig = open(file, "r", encoding="utf-8")
    new = open(tmpname, "w", encoding="utf-8")
    for line in orig:
        if "identifiers.org/" + oldns in line:
            line = line.replace(oldns, newns)
        new.write(line)
    orig.close()
    new.close()
    replace(tmpname, file)
    

VALID_IDENTIFIERS_NAMESPACES = {'ncbiprotein', 'orphanet', 'unists', '3dmet', 'pubchem.compound', 'meddra', 'eco', 'ido', 'uniprot', 'cco', 'reactome', 'arxiv', 'intact', 'mod', 'narcis', 'ensembl', 'mirbase.mature', 'DOI', 'eo', 'taxonomy', 'unipathway.compound', 'sgd', 'hgnc.symbol', 'ec-code', 'chebi', 'pirsf', 'lipidmaps', 'ecogene', 'kegg.reaction', 'mamo', 'isbn', 'panther.pathway', 'biomodels.teddy', 'kegg.drug', 'brenda', 'kegg.orthology', 'obi', 'pr', 'subtiwiki', 'opb', 'modeldb', 'doi', 'pubmed', 'vario', 'uberon', 'GO', 'kegg.compound', 'insdc', 'doid', 'mirbase', 'cas', 'bto', 'ncit', 'mp', 'biomodels.db', 'neurolex', 't3db', 'hp', 'chembl.compound', 'pdb-ccd', 'tcdb', 'cl', 'pw', 'omit', 'mim', 'unigene', 'ncim', 'envo', 'bao', 'efo', 'pato', 'sbo', 'biomodels.kisao', 'go', 'po', 'kegg.pathway', 'pubchem.substance', 'ncbigene', 'so', 'uniprot.isoform', 'fma', 'kegg.genes', 'icd', 'unipathway.reaction', 'interpro', 'mi'}
INVALID_IDENTIFIERS_NAMESPACES = set()

uri_replacements = {
        "bao/274": "bao/0000274",
        "bind/130661": "ncbiprotein/NP_011952", #cf Gary Bader's lab
        "bind/50058": "ncbiprotein/NP_010550", #cf Gary Bader's lab
        "brenda/BTO:0000304": "bto/BTO:0000304",
        "bto/00": "bto/BTO:00",
        "bto/BTO:000782" : "bto/BTO:0000782",
        "bto/BTO:35490": "bto/BTO:0035490", #This doesn't seem to exist.
        "bto/BTO::": "bto/BTO:",
        "cco/CL:": "cco/CCO:",
        "chebi/00": "chebi/CHEBI:00",
        "chebi/PATO:": "pato/PATO:",
        "doi/doi:%2010.1136/annrheumdis-2014-206295": "doi/doi:10.1136/annrheumdis-2014-206295",
        "ensembl/ENSG00000049246.14": "ensembl/ENSG00000049246",
        "ensembl/ENSG00000109819.9": "ensembl/ENSG00000109819",
        "ensembl/ENSG00000132326.12": "ensembl/ENSG00000132326",
        "ensembl/ENSG00000179094.16": "ensembl/ENSG00000179094",
        "go/G0": "go/GO",
        "go/GI": "go/GO",
        "go/GO:000821": "go/GO:0000821",
        "go/GO:000828": "go/GO:0000828",
        "go/GO:006470": "go/GO:0006470",
        "go/SBO:": "sbo/SBO:",
        "ido/C101887": "ncit/C101887",
        "ido/C171133": "ncit/C171133",
        "interpro/P36897": "uniprot/P36897",
        "kegg.compound/Cystathionine": "kegg.compound/C02291",
        "kegg.genes/K04459": "kegg.orthology/K04459",
        "kegg.pathway/2353": "kegg.genes/hsa:2353",
        "mamo/MAMO:": "mamo/MAMO_",
        "ncit/GO:": "go/GO:",
        "ncit/NCIT_C449": "ncit/C449",
        "ncit/SBO": "sbo/SBO",
        "ncit/c128320": "ncit/C128320",
        "ncit/mTORC2": "ncit/C96315",
        "ncit/0000511": "ido/0000511",
        "ncit/0000514": "ido/0000514",
        "ncit/0000597": "ido/0000597",
        "ncit/0000621": "ido/0000621",
        "ncit/25559": "ncit/C25559",
        "neurolex/C25636": "ncit/C25636",
        "obi/OBA": "obi/OBI",
        "omim/": "mim/",
        "omit/OMIT_": "omit/OMIT:",
        "pato/00": "pato/PATO:00",
        "pato/00": "pato/PATO:00",
        "pdb-ccd/26158": "chebi/CHEBI:26158",
        "psimi/": "mi/",
        "reactome/SBO:0000179": "sbo/SBO:0000179",
        "sbo/000": "sbo/SBO:000",
        "sbo/GO": "go/GO",
        "sbo/degradation": "sbo/SBO:0000179",
        "t3db/SBO:": "sbo/SBO:",
        "uberon/BTO:0000398": "bto/BTO:0000398",
        "unigene/P01730": "uniprot/P01730",
        "unipathway.compound/P07333": "uniprot/P07333",
        "unipathway.reaction/Q9Z1E3": "uniprot/Q9Z1E3",
        "uniprot.isoform/P": "uniprot/P",
        "uniprot.isoform/Q": "uniprot/Q",
        "uniprot/C21160": "ncit/C21160",
        "uniprot/C94967": "ncit/C94967",
        "uniprot/GO:0005893": "go/GO:0005893",
        "uniprot/PR:000050007": "pr/PR:000050007",
        "unists/P00734": "uniprot/P00734",
        }

def fixURI(uri):
    for old in uri_replacements:
        if old in uri:
            return uri.replace(old, uri_replacements[old])
    return None
    
remaining_bad_uris = []
fixed_uris = {}

def retestAllIdentifiersURIs(file):
    bad_uris = []
    f = open(file, "r", encoding="utf-8")
    for line in f:
        if "identifiers.org" in line:
            lvec = line.strip().split()
            for word in lvec:
                if "identifiers.org" in word:
                    for charstr in word.split('"'):
                        if "identifiers.org" in charstr:
#                            if "omim" in charstr:
#                                continue
#                            if "psimi" in charstr:
#                                continue
                            try:
                                validate_identifiers_org_uri(charstr)
                            except Exception as e:
                                bad_uris.append((file, charstr, str(e)))
                                # print(bad_uris[-1])
    f.close()
    for (file, uri, msg) in bad_uris:
        uri2 = fixURI(uri)
        # print("new version:", uri2)
        if uri2 is not None:
            validate_identifiers_org_uri(uri2)
            assert(".xml" in file)
            tmpname = file.replace(".xml", ".tmp")
            orig = open(file, "r", encoding="utf-8")
            new = open(tmpname, "w", encoding="utf-8")
            for line in orig:
                if uri in line:
                    line = line.replace(uri, uri2)
                new.write(line)
            orig.close()
            new.close()
            replace(tmpname, file)
            fixed_uris[(file, uri)] = uri2
        else:
            remaining_bad_uris.append((file, uri))
        


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
        f = open(file, "r", encoding="utf-8")
        bad_pmids = set()
        gp_file = open("good_pmids.p", "rb")
        good_pmids = pickle.load(gp_file)
        gp_file.close()
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
                                    if charvec[n+1] == "pubmed" and pmid not in good_pmids and pmid not in bad_pmids:
                                        assert(len(pmid)>0)
                                        url = "https://pubmed.ncbi.nlm.nih.gov/" + pmid
                                        try:
                                            if "+" in pmid:
                                                #These make valid URLs, but are invalid URIs: they don't fit the pubmed id pattern.
                                                bad_pmids.add(pmid)
                                            elif urllib.request.urlopen(url).getcode() > 400:
                                                bad_pmids.add(pmid)
                                            else:
                                                good_pmids.add(pmid)
                                        except:
                                                bad_pmids.add(pmid)
        f.close()
        gp_file = open("good_pmids.p", "wb")
        pickle.dump(good_pmids, gp_file)
        gp_file.close()
        for bad_pmid in bad_pmids:
            fixPubmedId(file, bad_pmid, id)
        for bad_identifiers_ns in bad_identifiers_ns:
            fixIdentifiersNS(file, bad_identifiers_ns, id)
        retestAllIdentifiersURIs(file)
    # print("Invalid identifiers.org namespaces:")
    # print(INVALID_IDENTIFIERS_NAMESPACES)
             
def writeURIChanges(baduri_filename, changeduri_filename):
    f = open(baduri_filename, "w")
    for (fname, uri) in remaining_bad_uris:
       f.write(fname)
       f.write(",")
       f.write(uri)
       f.write("\n")
    f.close()
    f = open(changeduri_filename, "w")
    for (fname, uri) in fixed_uris:
       f.write(fname)
       f.write(",")
       f.write(uri)
       f.write(",")
       f.write(fixed_uris[(fname, uri)])
       f.write("\n")
   
