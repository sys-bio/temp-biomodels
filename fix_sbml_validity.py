import libsbml

def fixNanoMolar(file):
    doc = libsbml.readSBMLFromFile(file)
    model = doc.getModel()
    for s in range(model.getNumSpecies()):
        species = model.getSpecies(s)
        if species.getSubstanceUnits()=="nanoMolar":
            species.setSubstanceUnits("nanomole")
    nm = model.getUnitDefinition("nanoMolar").clone()
    nm.setName("nm")
    nm.setId("nanomole")
    nm.unsetMetaId()
    nm.removeUnit(1)
    nm.getUnit(0).unsetMetaId()
    model.addUnitDefinition(nm)
    libsbml.writeSBMLToFile(doc, file)
    #The original unit definition, for reference:
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
        if param.getSBOTerm()==345:
            param.unsetSBOTerm()
    for r in range(model.getNumReactions()):
        rxn = model.getReaction(r)
        if rxn.getSBOTerm()==610:
            rxn.unsetSBOTerm()
    libsbml.writeSBMLToFile(doc, file)
        
    
upgrade_to_l2v4 = ["BIOMD0000000051", "BIOMD0000000060", "BIOMD0000000064", "BIOMD0000000096", "BIOMD0000000097", "BIOMD0000000164", "BIOMD0000000200", "BIOMD0000000207", "BIOMD0000000425", "BIOMD0000000437", "BIOMD0000000508", "BIOMD0000000509", "BIOMD0000000584", "BIOMD0000000585", "BIOMD0000000831", ]

make_boundary = {
    "BIOMD0000000344": ("MODEL1005280000_moderatestress.xml", "ROS")
    }

particular_fixes = {
    "BIOMD0000000439": fixNanoMolar,
    "BIOMD0000000479": fixNanoMolar,
    "BIOMD0000000631": fixSBO,
    }

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
                
        
