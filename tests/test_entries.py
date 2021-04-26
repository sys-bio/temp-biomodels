""" Test the entries of the BioModels

* Compatible with file formats (e.g., SBML, SED-ML, etc.)
* Can be executed successfully

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-22
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biomodels_qc import validation
from biosimulators_utils.utils.core import flatten_nested_list_of_strings
from warnings import warn
import biosimulators_utils.simulator.specs
import glob
import os
import parameterized
import unittest

MAX_ENTRIES = os.getenv('MAX_ENTRIES', None)
MAX_SEDML_FILES = os.getenv('MAX_SEDML_FILES', None)
ENTRIES_DIR = os.path.join(os.path.dirname(__file__), '..', 'final')

# get entries to test
ENTRY_DIRS = sorted([(dirname,) for dirname in glob.glob(os.path.join(ENTRIES_DIR, 'BIOMD0*'))])
if MAX_ENTRIES is not None:
    ENTRY_DIRS = ENTRY_DIRS[0:int(MAX_ENTRIES)]

# get SED-ML files to test
SEDML_FILES = sorted((os.path.relpath(filename, ENTRIES_DIR).replace(os.sep, '_').replace('.', '_'),
                      os.path.relpath(filename, ENTRIES_DIR).partition(os.sep)[0],
                      os.path.relpath(filename, ENTRIES_DIR).partition(os.sep)[2],
                      ) for filename in glob.glob(os.path.join(ENTRIES_DIR, 'BIOMD0*', '**', '*.sedml'), recursive=True))
if MAX_SEDML_FILES is not None:
    SEDML_FILES = SEDML_FILES[0:int(MAX_SEDML_FILES)]

# get specifications of simulators to use to test SED-ML files
SIMULATORS = [
    {
        'id': 'copasi',
        'version': 'latest',
    },
    {
        'id': 'tellurium',
        'version': 'latest',
    },
]
SIMULATORS.sort(key=lambda simulator: simulator['id'])

for simulator in SIMULATORS:
    simulator['specs'] = biosimulators_utils.simulator.specs.get_simulator_specs(simulator['id'], simulator['version'])

# combinations of SED-ML files/simulators to test
SEDML_FILES_SIMULATORS = []
for sanitized_name, entry_id, rel_filename in SEDML_FILES:
    for simulator in SIMULATORS:
        SEDML_FILES_SIMULATORS.append((sanitized_name + '_' + simulator['id'], entry_id, rel_filename, simulator))


class EntriesTestCase(unittest.TestCase):
    @parameterized.parameterized.expand(ENTRY_DIRS, skip_on_empty=True)
    def test_is_entry_valid(self, dirname):
        errors, warnings = validation.validate_entry(dirname)

        if warnings:
            warnings = [['The entry at `{}` may be invalid.'.format(dirname), warnings]]
            warn(flatten_nested_list_of_strings(warnings))

        if errors:
            errors = [['The entry at `{}` is invalid.'.format(dirname), errors]]
            raise ValueError(flatten_nested_list_of_strings(errors))

    @parameterized.parameterized.expand(SEDML_FILES_SIMULATORS, skip_on_empty=True)
    def test_can_sedml_be_executed(self, sanitized_name, entry_id, rel_filename, simulator):
        dirname = os.path.join(ENTRIES_DIR, entry_id)
        filename = os.path.join(dirname, rel_filename)
        errors, warnings = validation.validate_sedml_file(filename, dirname=dirname, simulators=[simulator])

        if errors and 'One or more simulators could not execute the file' not in flatten_nested_list_of_strings(errors):
            self.skipTest("`{}{}{}` is not a valid SED-ML file.".format(entry_id, os.sep, rel_filename))

        if 'no simulator has the capability to execute the file' in flatten_nested_list_of_strings(warnings):
            self.skipTest("`{}:{}` does not have the capability to execute `{}{}{}`.".format(
                simulator['id'], simulator['version'], entry_id, os.sep, rel_filename))
