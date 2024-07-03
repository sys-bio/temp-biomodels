import os
import filecmp


def run(filenames):
    """ Remove any file that matches "example_failed.pdf"

    Args:
        filename (:obj:`list`): list of filenames
    """
    removed = []
    for filename in filenames:
        if filecmp.cmp(filename, "example_failed.pdf"):
            os.remove(filename)
            removed.append(filename)
        elif filecmp.cmp(filename, "example_failed2.pdf"):
            os.remove(filename)
            removed.append(filename)
    for remove in removed:
        filenames.remove(remove)
        
