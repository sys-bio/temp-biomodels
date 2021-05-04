from biomodels_qc import utils
from biosimulators_utils.combine.io import CombineArchiveReader
import os
import shutil
import tempfile
import unittest


class UtilsTestCase(unittest.TestCase):
    FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000693')

    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

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

    def test_build_combine_archive(self):
        archive_filename = os.path.join(self.temp_dirname, 'archive.omex')
        utils.build_combine_archive(self.FIXTURE_DIRNAME, ['MODEL7817907010.sedml'], archive_filename)

        archive_dirname = os.path.join(self.temp_dirname, 'archive')
        archive = CombineArchiveReader().run(archive_filename, archive_dirname)
        self.assertEqual(archive.get_master_content()[0].location, 'MODEL7817907010.sedml')

    def test_are_biopax_files_the_same(self):
        a = os.path.join(os.path.dirname(__file__), 'fixtures', 'are_biopax_files_the_same', 'BIOMD0000000692-biopax2.owl')
        b = os.path.join(os.path.dirname(__file__), 'fixtures', 'are_biopax_files_the_same', 'BIOMD0000000692-biopax3.owl')
        c = os.path.join(os.path.dirname(__file__), 'fixtures', 'are_biopax_files_the_same', 'BIOMD0000000692-biopax2-diff-timestamp.owl')
        self.assertTrue(utils.are_biopax_files_the_same(a, a))
        self.assertFalse(utils.are_biopax_files_the_same(a, b))
        self.assertTrue(utils.are_biopax_files_the_same(a, c))
