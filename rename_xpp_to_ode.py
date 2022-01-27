
# Files that end in '.xpp' should instead end with '.ode'
from os import rename

def run(xpp_filenames):
    """ Rename xpp files

    Args:
        xpp_filenames(:obj:'list'): list of '.xpp' files to rename.

    """
    for xppname in xpp_filenames:
        odename = xppname.replace(".xpp", ".ode")
        rename(xppname, odename)
