import os
from biomodels_qc.validation import is_xpp_file_valid


def run(rel_filename, working_dir):
    """ Delete an XPP file if its invalid

    Args:
        rel_filename (:obj:`str`): relative filename
        working_dir (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)
    """
    filename = os.path.join(working_dir, rel_filename)
    if not is_xpp_file_valid(filename):
        os.remove(filename)
