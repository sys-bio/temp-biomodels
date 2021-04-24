from biomodels_qc import utils
import os
import unittest


class UtilsTestCase(unittest.TestCase):
    FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000693')

    def test_get_smbl_files_for_entry(self):
        self.assertEqual(set(utils.get_smbl_files_for_entry(self.FIXTURE_DIRNAME, include_urn_files=True)),
                         set([
                             os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693_url.xml'),
                             os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693_urn.xml'),
                         ]))

        self.assertEqual(set(utils.get_smbl_files_for_entry(self.FIXTURE_DIRNAME, include_urn_files=False)),
                         set([
                             os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693_url.xml'),
                         ]))
