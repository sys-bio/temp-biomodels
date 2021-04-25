import os
from biomodels_qc.validation import validate_xpp_file


def run(rel_filename, working_dir):
    """ Delete an XPP file if its invalid

    Args:
        rel_filename (:obj:`str`): relative filename
        working_dir (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)
    """
    filename = os.path.join(working_dir, rel_filename)
    if validate_xpp_file(filename)[0]:
        os.remove(filename)
