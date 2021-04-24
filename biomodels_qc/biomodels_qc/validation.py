""" Methods for validating entries of the BioModels database.

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

import glob
import os
import subprocess

__all__ = [
    'validate_entry',
    'is_xpp_file_valid',
]


def validate_entry(dirname):
    """ Validate an entry of the BioModels databse

    Args:
        dir (:obj:`str): path to directory for a entry of the BioModels database

    Raises:
        :obj:`ValueError`: if the entry is invalid
    """
    errors = []

    # validate XPP files
    for filename in glob.glob(os.path.join(dirname, '**', "*.xpp"), recursive=True):
        if not is_xpp_file_valid(filename):
            errors.append('`{}` is not a valid XPP file'.format(filename))

    # raise errors
    if errors:
        msg = 'The entry at `{}` is invalid:\n\n  {}'.format(
            dirname, '\n\n  '.join(error.replace('\n', '\n  ') for error in errors)
        )
        raise ValueError(msg)


def is_xpp_file_valid(filename):
    """ Determine if an XPP file is valid

    Args:
        filename (:obj:`str`): path to XPP file

    Returns:
        :obj:`bool`: whether the file is valid
    """
    filename = os.path.relpath(filename, '.')

    result = subprocess.run(['xppaut', filename, '-qics'],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            check=False)
    return result.returncode == 0 and '\n Error ' not in result.stdout.decode()
