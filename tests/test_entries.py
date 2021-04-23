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
from biosimulators_utils.sedml.data_model import SedDocument, Task, SteadyStateSimulation, UniformTimeCourseSimulation
from biosimulators_utils.sedml.io import SedmlSimulationReader
from biosimulators_utils.simulator.exec import exec_sedml_docs_in_archive_with_containerized_simulator
from lxml import etree
from pyxpp import pyxpp
import ast
import datetime
import dateutil.tz
import glob
import imghdr
import itertools
import json
import nbformat
import os
import owlready2
import parameterized
import PyPDF2
import requests
import scipy.io
import shutil
import subprocess
import tempfile
import unittest
import zipfile

MAX_SEDML_FILES = os.getenv('MAX_SEDML_FILES', None)
ENTRIES_DIR = os.path.join(os.path.dirname(__file__), '..', 'final')
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
    url = 'https://api.biosimulators.org/simulators/{}'.format(simulator['id'])
    if simulator['version'] != 'latest':
        url += '/{}'.format(simulator['version'])
    response = requests.get(url)
    response.raise_for_status()
    simulator['specs'] = response.json()[0]

SEDML_FILES_SIMULATORS = []
for sanitized_name, name in SEDML_FILES:
    for simulator in SIMULATORS:
        SEDML_FILES_SIMULATORS.append((sanitized_name + '_' + simulator['id'], name, simulator))
# combinations of files and simulators to check the executability of the entries

EXTENSION_COMBINE_FORMAT_MAP = {
    '.xml': CombineArchiveContentFormat.SBML.value,
    '.sbml': CombineArchiveContentFormat.SBML.value,
    '.sedml': CombineArchiveContentFormat.SED_ML.value,
}
# map from file extensions to COMBINE format specification URLs

SBML_EDAM_ID = 'format_2585'

IPYNB_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.ipynb'), recursive=True))
JPG_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.jpg'), recursive=True))
MAT_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.mat'), recursive=True))
OWL_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.owl'), recursive=True))
PDF_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.pdf'), recursive=True))
PNG_FILES = sorted((filename,) for filename in itertools.chain(
    glob.glob(os.path.join(ENTRIES_DIR, '**', '*.png'), recursive=True),
    glob.glob(os.path.join(ENTRIES_DIR, '**', '*.PNG'), recursive=True),
))
PY_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.py'), recursive=True))
SVG_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.svg'), recursive=True))
XML_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.xml'), recursive=True))
XPP_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.xpp'), recursive=True))
ZIP_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.zip'), recursive=True))


class EntriesTestCase(unittest.TestCase):
    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

    @parameterized.parameterized.expand(SEDML_FILES, skip_on_empty=True)
    def test_sedml_is_valid(self, sanitized_name, name):
        # Validate file
        filename = os.path.join(ENTRIES_DIR, name)
        SedmlSimulationReader().run(filename)

    @parameterized.parameterized.expand(SEDML_FILES_SIMULATORS, skip_on_empty=True)
    def test_sedml_can_be_executed(self, sanitized_name, name, simulator):
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
        archive_filename = os.path.join('.', 'archive.omex')
        build_combine_archive(name, archive_filename)

        out_dir = os.path.join(self.temp_dirname, 'outputs')
        docker_image = 'ghcr.io/biosimulators/{}:{}'.format(simulator['id'], simulator['version'])
        exec_sedml_docs_in_archive_with_containerized_simulator(
            archive_filename, out_dir, docker_image)

    @parameterized.parameterized.expand(IPYNB_FILES, skip_on_empty=True)
    def test_ipynb_files(self, filename):
        with open(filename) as file:
            version = json.load(file)['nbformat']
        with open(filename) as file:
            nbformat.read(file, as_version=version)

    @parameterized.parameterized.expand(JPG_FILES, skip_on_empty=True)
    def test_jpg_files(self, filename):
        if imghdr.what(filename) != 'jpeg':
            raise Exception('{} is not a valid JPEG file'.format(filename))

    @parameterized.parameterized.expand(MAT_FILES, skip_on_empty=True)
    def test_mat_files(self, filename):
        scipy.io.loadmat(filename)

    @parameterized.parameterized.expand(OWL_FILES, skip_on_empty=True)
    def test_owl_files(self, filename):
        onto = owlready2.get_ontology(filename)
        onto.load()

    @parameterized.parameterized.expand(PDF_FILES, skip_on_empty=True)
    def test_pdf_files(self, filename):
        try:
            with open(filename, 'rb') as file:
                PyPDF2.PdfFileReader(file)
        except PyPDF2.utils.PdfReadError:
            raise Exception('{} is not a valid PDF file'.format(filename))

    @parameterized.parameterized.expand(PNG_FILES, skip_on_empty=True)
    def test_png_files(self, filename):
        if imghdr.what(filename) != 'png':
            raise Exception('{} is not a valid PNG file'.format(filename))

    @parameterized.parameterized.expand(PY_FILES, skip_on_empty=True)
    def test_py_files(self, filename):
        with open(filename, 'r') as file:
            ast.parse(file.read())

    @parameterized.parameterized.expand(SVG_FILES, skip_on_empty=True)
    @unittest.skip('Files have errors, but readers are able to read the files nonetheless')
    def test_svg_files(self, filename):
        try:
            subprocess.check_call(['svgcheck', '--repair', filename])
        except:
            raise Exception('{} is not a valid SVG file'.format(filename))

    @parameterized.parameterized.expand(XML_FILES, skip_on_empty=True)
    def test_xml_files(self, filename):
        etree.parse(filename)

    @parameterized.parameterized.expand(XPP_FILES, skip_on_empty=True)
    def test_xpp_files(self, filename):
        subprocess = pyxpp.dry_run(filename)
        self.assertNotIn('Error', subprocess.stdout.decode(), subprocess.stdout.decode())

    @parameterized.parameterized.expand(ZIP_FILES, skip_on_empty=True)
    def test_zip_files(self, filename):
        with open(filename, 'rb') as file:
            zip_file = zipfile.ZipFile(file, mode='r')
            zip_file.extractall(self.temp_dirname)


def does_simulator_have_capabilities_to_execute_sed_document(sed_doc, simulator_specs):
    """ Determine if a simulator has the capabilities to execute a SED document

    Args:
        sed_doc (:obj:`SedDocument): SED document
        simulator_specs (:obj:`dict`): specifications of a simulation tool

    Returns:
        :obj:`bool`: whether the simulator has the capabilities to execute the SED document
    """
    for task in sed_doc.tasks:
        if not does_simulator_have_capabilities_to_execute_sed_task(task, simulator_specs):
            return False
    return True


def does_simulator_have_capabilities_to_execute_sed_task(task, simulator_specs):
    """ Determine if a simulator has the capabilities to execute a SED task

    Args:
        task (:obj:`Task`): SED task
        simulator_specs (:obj:`dict`): specifications of a simulation tool

    Returns:
        :obj:`bool`: whether the simulator has the capabilities to execute the SED task
    """
    if isinstance(task, Task):
        for alg_specs in simulator_specs['algorithms']:
            if does_algorithm_implementation_have_capabilities_to_execute_sed_task(task, alg_specs):
                return True

        return False

    else:
        return True


def does_algorithm_implementation_have_capabilities_to_execute_sed_task(task, algorithm_specs):
    """ Determine if an implementation of an algorithm has the capabilities to execute a SED task

    Args:
        task (:obj:`Task`): SED task
        algorithm_specs (:obj:`dict`): specifications of the implementation of an algorithm

    Returns:
        :obj:`bool`: whether the implementation of the algorithm has the capabilities to execute the SED task
    """
    model = task.model
    simulation = task.simulation
    algorithm = simulation.algorithm

    if algorithm_specs['kisaoId']['id'] == algorithm.kisao_id:
        # check if implementation supports SMBL
        supports_format = False
        for model_format_specs in algorithm_specs['modelFormats']:
            if model_format_specs['id'] == SBML_EDAM_ID:
                supports_format = True
                break
        if not supports_format:
            return False

        # check if implementation supports the type of simulation
        if not isinstance(simulation, (SteadyStateSimulation, UniformTimeCourseSimulation)):
            return False

        # check if implementation supports the parameters of the algorithm
        supports_parameters = True
        for change in algorithm.changes:
            supports_parameter = False
            for parameter_specs in algorithm_specs['parameters']:
                if parameter_specs['kisaoId']['id'] == change.kisao_id:
                    supports_parameter = True
                    break
            if not supports_parameter:
                supports_parameters = False
                break

        if not supports_parameters:
            return False

        return True

    return False


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
