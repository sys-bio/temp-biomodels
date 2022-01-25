import os


def run(filenames):
    """ Remove the "manifest.rdf" file

    Args:
        filename (:obj:`list`): list of filenames
    """
    removed = []
    for filename in filenames:
        if "metadata.rdf" in filename:
            os.remove(filename)
            removed.append(filename)
    for remove in removed:
        filenames.remove(remove)
        
