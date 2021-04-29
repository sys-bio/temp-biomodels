
#Files that end in '.xml' but aren't SBML:
REMOVE = {
    "BIOMD0000000585": ["manifest", "metadata"],
}

def run(id, sbml_filenames):
    """ Remove non-SBML files

    * Remove SBML files from the list that are not actually SBML.

    Args:
        id (:obj:`str`): id of BioModels entry
        sbml_filenames(:obj:'list'): list of SBML files to check.

    """
    if id in REMOVE:
        remove_list = []
        for filename in sbml_filenames:
            for word in REMOVE[id]:
                if word in filename:
                    remove_list.append(filename)
        for remove in remove_list:
            sbml_filenames.remove(remove)
