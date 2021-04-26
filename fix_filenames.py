import glob
import os
import shutil


RENAME = {"BIOMD0000000923": ("Liò", "Lio"),
          "BIOMD0000000864": ("Proctoe", "Proctor")
}


def run(id, working_dir):
    """ Fix the namespaces in a SED-ML file and save the file in place

    * Remove duplicate SED-ML namespace declarations -- automatically fixed by LXML
    * Add namespaces for models

    Args:
        id (:obj:`str`): id of BioModels entry
        working_dir (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)

    Returns:
        :obj:`list` of :obj:`str`: list of corrected files
    """
    changed = []
    if id not in RENAME:
        return changed
    for filename in glob.glob(os.path.join(working_dir, id, '**', '**'), recursive=True):
        (orig, new) = RENAME[id]
        if orig in filename:
            shutil.move(filename, filename.replace(orig, new))
            changed.append(filename)

    return changed
