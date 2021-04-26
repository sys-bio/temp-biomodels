from biomodels_qc import convert
import itertools
import glob
import os
import shutil
import tempfile
import unittest


class ConvertTestCase(unittest.TestCase):
    FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000692')

    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()
        self.temp_entry_dirname = os.path.join(self.temp_dirname, 'entry')
        shutil.copytree(self.FIXTURE_DIRNAME, self.temp_entry_dirname)

        for filename in itertools.chain(
            glob.glob(os.path.join(self.temp_entry_dirname, '**', '*-biopax2.owl'), recursive=True),
            glob.glob(os.path.join(self.temp_entry_dirname, '**', '*-biopax3.owl'), recursive=True),
            glob.glob(os.path.join(self.temp_entry_dirname, '**', '*.m'), recursive=True),
            glob.glob(os.path.join(self.temp_entry_dirname, '**', '*.xpp'), recursive=True),
            glob.glob(os.path.join(self.temp_entry_dirname, '**', '*_urn.xml'), recursive=True),
        ):
            os.remove(filename)

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

    def test_convert_with_url(self):
        original_files = set(glob.glob(os.path.join(self.temp_entry_dirname, "**", "*"), recursive=True))

        convert.convert_entry(self.temp_entry_dirname)

        current_files = set(glob.glob(os.path.join(self.temp_entry_dirname, "**", "*"), recursive=True))
        new_files = current_files.difference(original_files)

        self.assertEqual(new_files, set([
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-biopax2.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-biopax3.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-matlab.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-octave.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692.xpp'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692_urn.xml'),
        ]))

    def test_convert_without_url(self):
        os.rename(os.path.join(self.temp_entry_dirname, 'BIOMD0000000692_url.xml'),
                  os.path.join(self.temp_entry_dirname, 'BIOMD0000000692.xml'))
        original_files = set(glob.glob(os.path.join(self.temp_entry_dirname, "**", "*"), recursive=True))

        convert.convert_entry(self.temp_entry_dirname)

        current_files = set(glob.glob(os.path.join(self.temp_entry_dirname, "**", "*"), recursive=True))
        new_files = current_files.difference(original_files)

        self.assertEqual(new_files, set([
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-biopax2.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-biopax3.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-matlab.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692-octave.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692.xpp'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000692_urn.xml'),
        ]))

    def test_dont_convert_non_continuous_kinetic_models_to_alt_ode_formats(self):
        # qualitative model
        shutil.rmtree(self.temp_entry_dirname)
        shutil.copytree(os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000562'), self.temp_entry_dirname)

        convert.convert_entry(self.temp_entry_dirname)

        self.assertFalse(os.path.isfile(os.path.join(self.temp_entry_dirname, 'BIOMD0000000562-matlab.m')))
        self.assertFalse(os.path.isfile(os.path.join(self.temp_entry_dirname, 'BIOMD0000000562-octave.m')))
        self.assertFalse(os.path.isfile(os.path.join(self.temp_entry_dirname, 'BIOMD0000000562.xpp')))

        # stochastic simulation
        shutil.rmtree(self.temp_entry_dirname)
        shutil.copytree(os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000806-SSA'), self.temp_entry_dirname)

        convert.convert_entry(self.temp_entry_dirname)

        self.assertFalse(os.path.isfile(os.path.join(self.temp_entry_dirname, 'model-matlab.m')))
        self.assertFalse(os.path.isfile(os.path.join(self.temp_entry_dirname, 'model-octave.m')))
        self.assertFalse(os.path.isfile(os.path.join(self.temp_entry_dirname, 'model.xpp')))

        # continuous kinetic simulation
        shutil.rmtree(self.temp_entry_dirname)
        shutil.copytree(os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000806'), self.temp_entry_dirname)

        convert.convert_entry(self.temp_entry_dirname)

        self.assertTrue(os.path.isfile(os.path.join(self.temp_entry_dirname, 'model-matlab.m')))
        self.assertTrue(os.path.isfile(os.path.join(self.temp_entry_dirname, 'model-octave.m')))
        self.assertTrue(os.path.isfile(os.path.join(self.temp_entry_dirname, 'model.xpp')))

    def test_convert_delete_bad_xpp(self):
        shutil.rmtree(self.temp_entry_dirname)
        shutil.copytree(os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000693'), self.temp_entry_dirname)

        convert.convert_entry(self.temp_entry_dirname)

        self.assertFalse(os.path.isfile(os.path.join(self.temp_entry_dirname, 'BIOMD0000000693.xpp')))

    def test_convert_error_handling(self):
        os.rename(os.path.join(self.temp_entry_dirname, 'BIOMD0000000692.svg'),
                  os.path.join(self.temp_entry_dirname, 'BIOMD0000000692_url.xml'))

        with self.assertRaises(ValueError):
            convert.convert_entry(self.temp_entry_dirname)
