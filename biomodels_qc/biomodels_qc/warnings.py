""" Warnings

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-06-06
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

__all__ = ['BiomodelsQcWarning', 'FileCouldNotBeConvertedWarning']


class BiomodelsQcWarning(UserWarning):
    """ BioModels QC warning """
    pass  # pragma: no cover


class FileCouldNotBeConvertedWarning(BiomodelsQcWarning):
    """ Warning for a problem converting a file to another format """
    pass  # pragma: no cover
