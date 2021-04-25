from biomodels_qc import convert
import itertools
import glob
import os
import shutil
import tempfile
import unittest


class ConvertTestCase(unittest.TestCase):
    FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures', 'BIOMD0000000693')

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
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-biopax2.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-biopax3.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-matlab.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-octave.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693.xpp'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693_urn.xml'),
        ]))

    def test_convert_without_url(self):
        os.rename(os.path.join(self.temp_entry_dirname, 'BIOMD0000000693_url.xml'),
                  os.path.join(self.temp_entry_dirname, 'BIOMD0000000693.xml'))
        original_files = set(glob.glob(os.path.join(self.temp_entry_dirname, "**", "*"), recursive=True))

        convert.convert_entry(self.temp_entry_dirname)

        current_files = set(glob.glob(os.path.join(self.temp_entry_dirname, "**", "*"), recursive=True))
        new_files = current_files.difference(original_files)

        self.assertEqual(new_files, set([
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-biopax2.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-biopax3.owl'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-matlab.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693-octave.m'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693.xpp'),
            os.path.join(self.temp_entry_dirname, 'BIOMD0000000693_urn.xml'),
        ]))

    def test_convert_error_handling(self):
        os.rename(os.path.join(self.temp_entry_dirname, 'BIOMD0000000693.svg'),
                  os.path.join(self.temp_entry_dirname, 'BIOMD0000000693_url.xml'))

        with self.assertRaises(ValueError):
            convert.convert_entry(self.temp_entry_dirname)
