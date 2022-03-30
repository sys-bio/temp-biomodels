# Files that end in '.xpp' should instead end with '.ode'
from os import rename


def run(xpp_filenames):
    """ Rename XPP files

    Args:
        xpp_filenames (:obj:`list` of :obj:`str`): list of ``.xpp`` files to rename
    """
    for xpp_filename in xpp_filenames:
        ode_filename = xpp_filename.replace(".xpp", ".ode")
        rename(xpp_filename, ode_filename)
