import libsbml
import os


def run(id, sbml_files, errlist):
    """ Validate the SBML files.
    """
    for file in sbml_files:
        doc = libsbml.readSBMLFromFile(file)
        if doc.getModel().getNumReactions() > 1000:
            #Don't do unit checking for huge models.
            doc.setConsistencyChecks(libsbml.LIBSBML_CAT_UNITS_CONSISTENCY, False)
        doc.checkConsistency()
        errlog = doc.getErrorLog()
        for e in range(errlog.getNumErrors()):
            err = errlog.getError(e)
            if (err.getSeverity() > libsbml.LIBSBML_SEV_WARNING):
                errlist.append([id, os.path.basename(file), err.getMessage()])
