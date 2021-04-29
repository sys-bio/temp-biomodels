import libsbml
import os

def run(id, sbml_files, errlist):
    """ Validate the SBML files.
    """
    for file in sbml_files:
        doc = libsbml.readSBMLFromFile(file)
        doc.checkConsistency()
        errlog = doc.getErrorLog()
        for e in range(errlog.getNumErrors()):
            err = errlog.getError(e)
            if (err.getSeverity() > 1):
                errlist.append([id, os.path.basename(file), err.getMessage()])
