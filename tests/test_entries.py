""" Test the entries of the BioModels

* Compatible with file formats (e.g., SBML, SED-ML, etc.)
* Can be executed successfully

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-22
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biosimulators_utils.combine.data_model import CombineArchive, CombineArchiveContent, CombineArchiveContentFormat
from biosimulators_utils.combine.io import CombineArchiveWriter
from biosimulators_utils.data_model import Person
from biosimulators_utils.sedml.io import SedmlSimulationReader
from biosimulators_utils.simulator.exec import exec_sedml_docs_in_archive_with_containerized_simulator
import datetime
import dateutil.tz
import glob
import os
import parameterized
import shutil
import tempfile
import unittest

MAX_SEDML_FILES = None
ENTRIES_DIR = os.path.join(os.path.dirname(__file__), '..')
SEDML_FILES = sorted((os.path.relpath(filename, ENTRIES_DIR), filename)
                     for filename in glob.glob(os.path.join(ENTRIES_DIR, 'BIOMD0*', '**', '*.sedml'), recursive=True))
if MAX_SEDML_FILES:
    SEDML_FILES = SEDML_FILES[0:MAX_SEDML_FILES]
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

SEDML_FILES_SIMULATORS = []
for name, filename in SEDML_FILES:
    for simulator in SIMULATORS:
        SEDML_FILES_SIMULATORS.append((name, filename, simulator))
# combinations of files and simulators to check the executability of the entries

EXTENSION_COMBINE_FORMAT_MAP = {
    '.xml': CombineArchiveContentFormat.SBML.value,
    '.sbml': CombineArchiveContentFormat.SBML.value,
    '.sedml': CombineArchiveContentFormat.SED_ML.value,
}
# map from file extensions to COMBINE format specification URLs


class EntriesTestCase(unittest.TestCase):
    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

    @parameterized.parameterized.expand(SEDML_FILES)
    def test_sedml_is_valid(self, name, filename):
        # Validate file
        SedmlSimulationReader().run(filename)

    @parameterized.parameterized.expand(SEDML_FILES_SIMULATORS)
    def test_sedml_can_be_executed(self, name, filename, simulator):
        # Validate file
        try:
            SedmlSimulationReader().run(filename)
        except:
            self.skipTest("File is invalid.")

        # Execute entry if file is valid
        archive_filename = os.path.join(self.temp_dirname, 'archive.omex')
        build_combine_archive(name, archive_filename)

        out_dir = os.path.join(self.temp_dirname, 'outputs')
        docker_image = 'ghcr.io/biosimulators/{}:{}'.format(simulator['id'], simulator['version'])
        exec_sedml_docs_in_archive_with_containerized_simulator(
            archive_filename, out_dir, docker_image)


def build_combine_archive(master_sedml_name, archive_filename):
    entry_id, _, master_sedml_location = master_sedml_name.partition('/')
    entry_dirname = os.path.join(ENTRIES_DIR, entry_id)

    now = datetime.datetime.now(tz=dateutil.tz.tzutc()).replace(microsecond=0)

    archive = CombineArchive(
        authors=[
            Person(family_name='Center for Reproducible Biomodeling Modeling'),
        ],
        created=now,
        updated=now,
    )

    for file in sorted(glob.glob(os.path.join(entry_dirname, '**', '*'), recursive=True)):
        location = os.path.relpath(file, entry_dirname)
        ext = os.path.splitext(file)[1]
        format = EXTENSION_COMBINE_FORMAT_MAP.get(ext, None)
        if format:
            archive.contents.append(
                CombineArchiveContent(
                    location=location,
                    format=format,
                    master=location == master_sedml_location,
                    authors=[],
                    created=now,
                    updated=now,
                )
            )

    CombineArchiveWriter().run(archive, entry_dirname, archive_filename)
