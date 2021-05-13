from biomodels_qc.validation import validate_vcml_file
import os


def remove_bad_vcml_file(filename):
    """ Remove a VCell file if its bad

    Args:
        filename (:obj:`str`): file name
    """
    if validate_vcml_file(filename)[0]:
        os.remove(filename)


def run(filenames):
    for filename in filenames:
        remove_bad_vcml_file(filename)
