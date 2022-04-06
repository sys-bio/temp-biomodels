import os

# Files that end in '.xml' but aren't SBML:
RENAME = {"BIOMD0000001013": ("Leon-Triana2021 (eqs 1 and 2).xml", "Leon-Triana2021 - eqs 1 and 2.xml"),
          "BIOMD0000001027": ("Zake2021_Metformin+Mice+PO.xml", "Zake2021_Metformin_Mice_PO.xml"),
          "BIOMD0000001028": ("Zake2021_Metformin+Human+single+PO+dose.xml", "Zake2021_Metformin_Human_single_PO_dose.xml"),
          "BIOMD0000001029": ("Zake2021_Metformin+Human+multiple+PO+dose.xml", "Zake2021_Metformin_Human_multiple_PO_dose.xml"),
          "BIOMD0000001039": ("Zake2021_Metformin+Mice+IV.xml", "Zake2021_Metformin_Mice_IV.xml"),
          }


def run(id, sbml_filenames):
    """ Rename SBML files with unhelpful names

    * The renaming has to be separate from fix_manual_corrections because the
      SED-ML files are produced first, and set up the 'model' links, which
      need to be the new filenames, not the old.

    Args:
        id (:obj:`str`): id of BioModels entry
        sbml_filenames(:obj:'list'): list of SBML files to check.

    """
    remove_list = []
    if id in RENAME:
        (old, new) = RENAME[id]
        for filename in sbml_filenames:
            if old in filename:
                newfilename = filename.replace(old, new)
                os.rename(filename, newfilename)
                remove_list.append((filename, newfilename))
        for (old, new) in remove_list:
            sbml_filenames.remove(old)
            sbml_filenames.append(new)
