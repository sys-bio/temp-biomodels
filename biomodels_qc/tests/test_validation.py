from biomodels_qc import validation
import os
import shutil
import tempfile
import unittest


class ValidationTestCase(unittest.TestCase):
    FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures')

    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

    def test_validate_entry(self):
        validation.validate_entry(os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692'))

        with self.assertRaises(ValueError):
            validation.validate_entry(os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693'))

    def test_is_xpp_file_valid(self):
        self.assertTrue(validation.is_xpp_file_valid(os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.xpp')))
        self.assertFalse(validation.is_xpp_file_valid(os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693', 'BIOMD0000000693.xpp')))
