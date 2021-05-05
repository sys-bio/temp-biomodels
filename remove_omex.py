import zipfile
import os


KEEP = ["BIOMD0000000585"]


def run(id, omex_filenames, working_dir):
    """ Remove OMEX files

    * Remove OMEX files that are simple duplicates of the files already in the directory.

    Args:
        id (:obj:`str`): id of BioModels entry
        omex_filenames(:obj:'str'): list of omex files to check.
        working_dir (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)

    Returns:
        :obj:`list` of :obj:`str`: list of removed files
    """
    removed = []
    for omex in omex_filenames:
        if id in KEEP:
            zf = zipfile.ZipFile(omex, "r")
            zf.extractall(path=os.path.dirname(omex))
        else:
            os.remove(os.path.join(working_dir, id, omex))
            removed.append(omex)

    return removed
