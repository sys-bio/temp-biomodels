from biomodels_qc.validation import validate_octave_file
import os


def remove_bad_octave_file(filename):
    """ Remove a Octave file if its bad

    Args:
        filename (:obj:`str`): file name
    """
    if validate_octave_file(filename)[0]:
        os.remove(filename)


def run(filenames):
    for filename in filenames:
        remove_bad_octave_file(filename)
