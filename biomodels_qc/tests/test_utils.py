from biomodels_qc import utils
from biosimulators_utils.combine.io import CombineArchiveReader, CombineArchiveWriter
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
        archive = utils.build_combine_archive(self.FIXTURE_DIRNAME, ['MODEL7817907010.sedml'], description='description')
        CombineArchiveWriter().run(archive, self.FIXTURE_DIRNAME, archive_filename)

        archive_filename = os.path.join(self.temp_dirname, 'archive.omex')
        archive = utils.build_combine_archive(self.FIXTURE_DIRNAME, ['MODEL7817907010.sedml'])
        CombineArchiveWriter().run(archive, self.FIXTURE_DIRNAME, archive_filename)

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

        a = os.path.join(os.path.dirname(__file__), 'fixtures', 'are_biopax_files_the_same', 'biopax3-a.owl')
        b = os.path.join(os.path.dirname(__file__), 'fixtures', 'are_biopax_files_the_same', 'biopax3-b.owl')
        self.assertTrue(utils.are_biopax_files_the_same(a, a))
        self.assertTrue(utils.are_biopax_files_the_same(a, b))

    def test_is_sbml_file(self):
        filename = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000005', 'BIOMD0000000005_url.xml')
        self.assertTrue(utils.is_sbml_file(filename))

        filename = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000005', 'BIOMD0000000005.sedml')
        self.assertFalse(utils.is_sbml_file(filename))

        filename = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000522', 'SM9.zip')
        self.assertFalse(utils.is_sbml_file(filename))

    def test_does_sbml_file_represent_core_kinetic_model(self):
        filename = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000005', 'BIOMD0000000005_url.xml')
        self.assertTrue(utils.does_sbml_file_represent_core_kinetic_model(filename))

        filename = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000562', 'BIOMD0000000562_url.xml')
        self.assertFalse(utils.does_sbml_file_represent_core_kinetic_model(filename))
