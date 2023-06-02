import os

# Files that end in '.xml' but aren't SBML:
RENAME = {"BIOMD0000001013": ("Leon-Triana2021 (eqs 1 and 2).xml", "Leon-Triana2021 - eqs 1 and 2.xml"),
          "BIOMD0000001027": ("Zake2021_Metformin+Mice+PO.xml", "Zake2021_Metformin_Mice_PO.xml"),
          "BIOMD0000001028": ("Zake2021_Metformin+Human+single+PO+dose.xml", "Zake2021_Metformin_Human_single_PO_dose.xml"),
          "BIOMD0000001029": ("Zake2021_Metformin+Human+multiple+PO+dose.xml", "Zake2021_Metformin_Human_multiple_PO_dose.xml"),
          "BIOMD0000001039": ("Zake2021_Metformin+Mice+IV.xml", "Zake2021_Metformin_Mice_IV.xml"),
          "BIOMD0000000753": ("Figueredo2013:1.xml", "Figueredo2013_1.xml"),
          "BIOMD0000000756": ("Figueredo2013:3.xml", "Figueredo2013_3.xml"),
          "BIOMD0000000767": ("Macnamara2015:2.xml", "Macnamara2015_2.xml"),
          "BIOMD0000000780": ("Wang2016:1.xml", "Wang2016_1.xml"),
          "BIOMD0000000781": ("Wang2016:2.xml", "Wang2016_2.xml"),
          "BIOMD0000000782": ("Wang2016:3.xml", "Wang2016_3.xml"),
          "BIOMD0000000795": ("Chen2011:2.xml", "Chen2011_2.xml"),
          }

REMOVE = {"BIOMD0000000642": ("MODEL1304190001_urn.xml"),
          "BIOMD0000000842": ("MODEL1012080000_url.xml"),
          "BIOMD0000000917": ("MODEL1006230025_urn.xml"),
          }


def run(id, sbml_filenames, sbml_master):
    """ Rename SBML files with unhelpful names

    * The renaming has to be separate from fix_manual_corrections because the
      SED-ML files are produced first, and set up the 'model' links, which
      need to be the new filenames, not the old.
    * The same thing goes for SBML files we need to remove.

    Args:
        id (:obj:`str`): id of BioModels entry
        sbml_filenames(:obj:'list'): list of SBML files to check.

    """
    remove_list = []
    if id in RENAME:
        (old, new) = RENAME[id]
        if sbml_master == old:
            sbml_master = new
        for filename in sbml_filenames:
            if old in filename:
                newfilename = filename.replace(old, new)
                os.rename(filename, newfilename)
                remove_list.append((filename, newfilename))
        for (old, new) in remove_list:
            sbml_filenames.remove(old)
            sbml_filenames.append(new)
    if id in REMOVE:
        old = REMOVE[id]
        if sbml_master == old:
            raise NotImplementedError("Need new sbml name for removed file.")
        for filename in sbml_filenames:
            if old in filename:
                os.remove(filename)
                remove_list.append(filename)
        for old in remove_list:
            sbml_filenames.remove(old)
    if ":" in sbml_master:
        sbml_master = sbml_master.replace(":", "_")
        
    return sbml_master
