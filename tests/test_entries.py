""" Test the entries of the BioModels

* Compatible with file formats (e.g., SBML, SED-ML, etc.)
* Can be executed successfully

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-22
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biomodels_qc.validation import is_xpp_file_valid
from biosimulators_utils.combine.data_model import CombineArchive, CombineArchiveContent, CombineArchiveContentFormat
from biosimulators_utils.combine.io import CombineArchiveWriter
from biosimulators_utils.data_model import Person
from biosimulators_utils.sedml.data_model import Task, SteadyStateSimulation, UniformTimeCourseSimulation
from biosimulators_utils.sedml.io import SedmlSimulationReader
from biosimulators_utils.simulator.exec import exec_sedml_docs_in_archive_with_containerized_simulator
from biosimulators_utils.simulator import specs as simulator_specs
from lxml import etree
import ast
import datetime
import dateutil.tz
import glob
import imghdr
import itertools
import json
import libsbml
import nbformat
import os
import owlready2
import parameterized
import PyPDF2
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
    simulator['specs'] = simulator_specs.get_simulator_specs(simulator['id'], simulator['version'])

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


def is_file_sbml(filename):
    try:
        root = etree.parse(filename).getroot()
        return root.nsmap[None].startswith('http://www.sbml.org/')
    except:
        return False


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
ALL_XML_FILES = set((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.xml'), recursive=True))
SBML_FILES = list(filter(lambda filename: is_file_sbml(filename[0]), ALL_XML_FILES))
SVG_FILES = sorted((filename,) for filename in glob.glob(os.path.join(ENTRIES_DIR, '**', '*.svg'), recursive=True))
OTHER_XML_FILES = sorted(set(ALL_XML_FILES).difference(set(SBML_FILES)))
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

        subprocess.check_call(['flake8', filename])

    @parameterized.parameterized.expand(SBML_FILES, skip_on_empty=True)
    def test_sbml_files(self, filename):
        doc = libsbml.readSBMLFromFile(filename)
        has_error = False
        for i_error in range(doc.getNumErrors()):
            if not (sbml_error.isInfo() or sbml_error.isWarning()):
                has_error = True
                break
        if has_error:
            log = doc.getErrorLog()
            raise Exception(log.toString())

    @parameterized.parameterized.expand(SVG_FILES, skip_on_empty=True)
    def test_svg_files(self, filename):
        try:
            subprocess.check_call(['svglint', filename])
        except:
            raise Exception('{} is not a valid SVG file'.format(filename))

    @parameterized.parameterized.expand(OTHER_XML_FILES, skip_on_empty=True)
    def test_other_xml_files(self, filename):
        etree.parse(filename)

    @parameterized.parameterized.expand(XPP_FILES, skip_on_empty=True)
    def test_xpp_files(self, filename):
        self.assertTrue(is_xpp_file_valid(filename))

    @parameterized.parameterized.expand(ZIP_FILES, skip_on_empty=True)
    def test_zip_files(self, filename):
        with open(filename, 'rb') as file:
            zip_file = zipfile.ZipFile(file, mode='r')
            zip_file.extractall(self.temp_dirname)


def does_simulator_have_capabilities_to_execute_sed_document(doc, simulator_specs):
    if not simulator_specs.does_simulator_have_capabilities_to_execute_sed_document(doc, simulator_specs):
        return False

    for task in doc.tasks:
        if isinstance(task, Task) and not isinstance(task.simulation(SteadyStateSimulation, UniformTimeCourseSimulation)):
            return False

    return True


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
