import os


def run(filenames):
    """ Remove SBML files with "_urn" in their names
        if the same filename with "_url" instead is also 
        in the file list.  Also remove 'metadata' files.

    Args:
        filename (:obj:`list`): list of filenames
    """
    removed = []
    for filename in filenames:
        if "_urn" in filename:
            url_version = filename.replace("urn", "url")
            if url_version in filenames:
                os.remove(filename)
                removed.append(filename)
        if "metadata" in filename:
            removed.append(filename)
    for remove in removed:
        filenames.remove(remove)
        
