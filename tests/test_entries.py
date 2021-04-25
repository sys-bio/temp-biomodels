""" Test the entries of the BioModels

* Compatible with file formats (e.g., SBML, SED-ML, etc.)
* Can be executed successfully

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-22
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biomodels_qc import validation
from biomodels_qc.utils import build_combine_archive
from biosimulators_utils.combine.data_model import CombineArchiveContentFormat
from biosimulators_utils.sedml.data_model import Task, SteadyStateSimulation, UniformTimeCourseSimulation
from biosimulators_utils.sedml.io import SedmlSimulationReader
from biosimulators_utils.simulator.exec import exec_sedml_docs_in_archive_with_containerized_simulator
from biosimulators_utils.simulator import specs as simulator_specs
import glob
import os
import parameterized
import shutil
import tempfile
import unittest

MAX_ENTRIES = os.getenv('MAX_ENTRIES', None)
MAX_SEDML_FILES = os.getenv('MAX_SEDML_FILES', None)
ENTRIES_DIR = os.path.join(os.path.dirname(__file__), '..', 'final')

ENTRY_DIRS = [(dirname,) for dirname in glob.glob(os.path.join(ENTRIES_DIR, 'BIOMD0*'))]
if MAX_ENTRIES is not None:
    ENTRY_DIRS = ENTRY_DIRS[0:int(MAX_ENTRIES)]
    
SEDML_FILES = sorted((os.path.relpath(filename, ENTRIES_DIR).replace('/', '_').replace('.', '_'),
                      os.path.relpath(filename, ENTRIES_DIR),
                      ) for filename in glob.glob(os.path.join(ENTRIES_DIR, 'BIOMD0*', '**', '*.sedml'), recursive=True))
if MAX_SEDML_FILES is not None:
    SEDML_FILES = SEDML_FILES[0:int(MAX_SEDML_FILES)]
# entries to test

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
# simulators to use to check the executability of the entries

for simulator in SIMULATORS:
    simulator['specs'] = simulator_specs.get_simulator_specs(simulator['id'], simulator['version'])

SEDML_FILES_SIMULATORS = []
for sanitized_name, name in SEDML_FILES:
    for simulator in SIMULATORS:
        SEDML_FILES_SIMULATORS.append((sanitized_name + '_' + simulator['id'], name, simulator))
# combinations of files and simulators to check the executability of the entries


class EntriesTestCase(unittest.TestCase):
    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

    @parameterized.parameterized.expand(SEDML_FILES, skip_on_empty=True)
    def test_is_sedml_valid(self, sanitized_name, name):
        # Validate file
        filename = os.path.join(ENTRIES_DIR, name)
        SedmlSimulationReader().run(filename)

    @parameterized.parameterized.expand(SEDML_FILES_SIMULATORS, skip_on_empty=True)
    def test_can_sedml_be_executed(self, sanitized_name, name, simulator):
        # Validate file
        filename = os.path.join(ENTRIES_DIR, name)
        try:
            doc = SedmlSimulationReader().run(filename)
        except:
            self.skipTest("File is invalid.")

        # Check if simulator has the capabilities to execute the archive
        if not does_simulator_have_capabilities_to_execute_sed_document(doc, simulator['specs']):
            self.skipTest('Simulator does not have the capabilities to execute the SED document')

        # Execute entry if file is valid
        archive_filename = os.path.join(self.temp_dirname, 'archive.omex')
        dirname, _, rel_name = name.partition('/')
        build_combine_archive(os.path.join(ENTRIES_DIR, dirname), rel_name, archive_filename)

        out_dir = os.path.join(self.temp_dirname, 'outputs')
        docker_image = 'ghcr.io/biosimulators/{}:{}'.format(simulator['id'], simulator['version'])
        exec_sedml_docs_in_archive_with_containerized_simulator(
            archive_filename, out_dir, docker_image)

    @parameterized.parameterized.expand(ENTRY_DIRS, skip_on_empty=True)
    def test_is_entry_valid(self, dirname):
        self.assertTrue(validation.validate_entry(dirname))


def does_simulator_have_capabilities_to_execute_sed_document(doc, simulator_specs):
    if not simulator_specs.does_simulator_have_capabilities_to_execute_sed_document(doc, simulator_specs):
        return False

    for task in doc.tasks:
        if isinstance(task, Task) and not isinstance(task.simulation(SteadyStateSimulation, UniformTimeCourseSimulation)):
            return False

    return True
