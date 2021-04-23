from pyxpp import pyxpp
import os


def run(rel_filename, working_dir):
    """ Delete an XPP file if its invalid

    Args:
        rel_filename (:obj:`str`): relative filename
        working_dir (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)
    """
    filename = os.path.join(working_dir, rel_filename)
    subprocess = pyxpp.dry_run(filename)
    if '\n Error ' in subprocess.stdout.decode():
        os.remove(filename)
