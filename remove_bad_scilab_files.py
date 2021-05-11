from biomodels_qc.biomodels_qc.validation import validate_scilab_file
import os


def remove_bad_scilab_file(filename):
    """ Remove a Scilab file if its bad

    Args:
        filename (:obj:`str`): file name
    """
    if validate_scilab_file(filename)[0]:
        os.remove(filename)


def run(filenames):
    for filename in filenames:
        remove_bad_scilab_file(filename)
