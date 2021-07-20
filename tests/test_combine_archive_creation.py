""" Test for building manifests for COMBINE archives

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-07-19
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biomodels_qc.utils import EXTENSION_COMBINE_FORMAT_MAP
import os
import unittest


class CombineArchiveCreationTestCase(unittest.TestCase):
    def test_support_for_all_file_extensions(self):
        base_dir = os.path.join(os.path.dirname(__file__), '..', 'final')
        exts = set()
        for root, dirs, files in os.walk(base_dir):
            for name in files:
                _, ext = os.path.splitext(name)
                assert ext and ext[0] == '.', \
                    "`{}` does not have an extension".format(os.path.relpath(os.path.join(root, name), base_dir))
                exts.add(ext)
        unsupported_exts = exts.difference(set(EXTENSION_COMBINE_FORMAT_MAP.keys()))
        if unsupported_exts:
            msg = (
                'biomodels_qc.utils.EXTENSION_COMBINE_FORMAT_MAP '
                'must be extended to support these additional extensions:\n  {}'
            ).format('\n  '.join(sorted(unsupported_exts)))
            raise NotImplementedError(msg)
