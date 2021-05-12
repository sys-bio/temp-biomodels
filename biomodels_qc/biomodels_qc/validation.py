""" Methods for validating entries of the BioModels database.

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from .utils import build_combine_archive
from biosimulators_utils.sedml.data_model import UniformTimeCourseSimulation
from biosimulators_utils.sedml.io import SedmlSimulationReader
from biosimulators_utils.simulator.exec import exec_sedml_docs_in_archive_with_containerized_simulator
from biosimulators_utils.warnings import BioSimulatorsWarning
from kisao.data_model import AlgorithmSubstitutionPolicy
import ast
import biosimulators_utils.simulator.specs
import COPASI
import enum
import faulthandler
import glob
import imghdr
import json
import libsbml
import lxml.etree
import nbformat
import os
import owlready2
import PyPDF2
import re
import scipy.io
import shutil
import subprocess
import sys
import tempfile
import warnings
import zipfile

faulthandler.enable()

__all__ = [
    'validate_entry',
    'validate_filename',
    'validate_combine_archive',
    'validate_copasi_file',
    'validate_copasi_file_in_subprocess',
    'validate_image_file',
    'validate_ipynb_notebook_file',
    'validate_matlab_data_file',
    'validate_octave_file',
    'validate_owl_ontology_file',
    'validate_pdf_file',
    'validate_python_file',
    'validate_sbml_file',
    'validate_scilab_file',
    'validate_sedml_file',
    'validate_vcml_file',
    'validate_xml_file',
    'validate_xpp_file',
    'validate_zip_file',
]


class ImageFormat(str, enum.Enum):
    """ An image format """
    jpeg = 'jpeg'
    jpg = 'jpeg'
    gif = 'gif'
    png = 'png'


def validate_filename(filename):
    """ Determine if a filename is valid

    * Check that name only involves alphanumeric characters, underscores and dashes

    Args:
        filename (:obj:`str`): path to file
    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    basename, extension = os.path.splitext(filename)

    if (
        not re.match(r'^[a-z0-9_\-\. \(\){}]+$'.format(re.escape(os.sep)), basename, re.IGNORECASE)
        or '..' in filename
        or '.-' in filename
        or '._' in filename
        or not re.match(r'^\.[a-z0-9_\-]+$', extension)
    ):
        return [[(
            'Filename `{}` is invalid. Filenames should only contain letters, numbers, underscores, '
            'dashes and periods to separate extensions.'
        ).format(filename)]], []
    else:
        return [], []


def validate_combine_archive(filename):
    """ Determine if a COMBINE/OMEX archive is valid

    Args:
        filename (:obj:`str`): path to COMBINE/OMEX archive

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    errors = []
    warnings = []

    errors.append([(
        'BioModels entries should not contain COMBINE/OMEX archives. '
        'The BioModels platform automatically generates a COMBINE/OMEX archive for each entry.'
    )])

    return errors, warnings


def validate_copasi_file(filename):
    """ Determine if a COPASI file is valid

    Args:
        filename (:obj:`str`): path to COPASI file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    assert COPASI.CRootContainer.getRoot() is not None
    data_model = COPASI.CRootContainer.addDatamodel()
    COPASI.CCopasiMessage.clearDeque()
    if data_model.loadModel(filename):
        return [], []
    else:
        return [[COPASI.CCopasiMessage.getAllMessageText()]], []


def validate_copasi_file_in_subprocess(filename):
    """ Determine if a COPASI file is valid, handling segmentation faults in COPASI

    Args:
        filename (:obj:`str`): path to COPASI file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    result = subprocess.run(
        [
            sys.executable, '-c',
            ';'.join([
                'from biomodels_qc.validation import validate_copasi_file',
                'import json',
                'print(json.dumps(validate_copasi_file("{}")))'.format(filename),
            ]),
        ],
        check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode == 0:
        return json.loads(result.stdout.decode())
    else:
        return [], [['`{}` could not be validated because COPASI failed.'.format(filename), [[result.stderr.decode()]]]]


def validate_image_file(filename, image_format):
    """ Determine if an image file is valid

    Args:
        filename (:obj:`str`): path to image file
        image_format (:obj:`ImageFormat`): image format

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    if imghdr.what(filename) == image_format.value:
        return [], []
    else:
        return [['`{}` is not a valid {} image.'.format(filename, image_format.name)]], []


def validate_ipynb_notebook_file(filename):
    """ Determine if an IPython/Jupyter notebook file is valid

    Args:
        filename (:obj:`str`): path to notebook file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    try:
        with open(filename, 'rb') as file:
            version = json.load(file).get('nbformat', None)
    except (UnicodeDecodeError, json.JSONDecodeError) as exception:
        return [['The file has JSON syntax errors.', [[str(exception)]]]], []

    if version is None:
        return [['The file does not have a `nbformat` attribute.']], []

    try:
        with open(filename, 'rb') as file:
            nbformat.read(file, as_version=version)
    except Exception as exception:
        return [['The file is not consistent with the IPython/Jupyter notebook schema.', [[str(exception)]]]], []

    return [], []


def validate_matlab_data_file(filename):
    """ Determine if a MATLAB data file is valid

    Args:
        filename (:obj:`str`): path to data file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    try:
        scipy.io.loadmat(filename)
        return [], []
    except Exception as exception:
        return [[str(exception)]], []


def validate_octave_file(filename):
    """ Determine if an Octave file is valid

    Args:
        filename (:obj:`str`): path to Octave file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    result = subprocess.run(['octave', '--no-gui', '--no-window-system', '--quiet', filename],
                            check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode == 0:
        stderr = result.stderr.decode(errors="ignore")
        if stderr.startswith('parse error'):
            return [['`{}` is not valid.'.format(filename), [[stderr]]]], []
        else:
            return [], []
    else:
        raise RuntimeError('Octave failed')


def validate_owl_ontology_file(filename):
    """ Determine if an OWL ontology file is valid

    Args:
        filename (:obj:`str`): path to OWL file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    onto = owlready2.get_ontology(filename)
    try:
        onto.load()
        return [], []
    except owlready2.base.OwlReadyOntologyParsingError as exception:
        return [[str(exception)]], []


def validate_pdf_file(filename):
    """ Determine if a PDF file is valid

    Args:
        filename (:obj:`str`): path to PDF file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    try:
        with open(filename, 'rb') as file:
            PyPDF2.PdfFileReader(file)
        return [], []
    except PyPDF2.utils.PdfReadError as exception:
        return [[str(exception)]], []


def validate_python_file(filename):
    """ Determine if a Python file is valid

    Args:
        filename (:obj:`str`): path to Python file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    try:
        with open(filename, 'rb') as file:
            ast.parse(file.read())
        return [], []
    except ValueError as exception:
        return [[str(exception)]], []


def validate_sbml_file(filename):
    """ Determine if a SBML file is valid

    Args:
        filename (:obj:`str`): path to SBML file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    doc = libsbml.readSBMLFromFile(filename)
    doc.checkConsistency()

    errors = []
    warnings = []
    for i_error in range(doc.getNumErrors()):
        sbml_error = doc.getError(i_error)
        if sbml_error.isInfo() or sbml_error.isWarning():
            warnings.append([sbml_error.getMessage()])
        else:
            errors.append([sbml_error.getMessage()])

    return errors, warnings


def validate_scilab_file(filename):
    """ Determine if an Scilab file is valid

    Args:
        filename (:obj:`str`): path to Scilab file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    result = subprocess.run(['scilab', '--parse-file', filename, '-nb', '-nwni'],
                            check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode == 0:
        return [], []
    else:
        return [['`{}` is not valid.'.format(filename)]], []


def validate_sedml_file(filename, dirname=None, max_number_of_time_course_steps=1000, simulators=None):
    """ Determine if a SED-ML file is valid, optionally including checking whether it can be executed by 1 or more simulation tools

    Args:
        filename (:obj:`str`): path to SED-ML file
        dirname (:obj:`str, optional): directory for the BioModels entry which includes this SED-ML file
        max_number_of_time_course_steps (:obj:`str`, optional): maximum number of steps of a uniform time course
            before a warning for potentially excessive steps is raised
        simulators (:obj:`list` of :obj:`dict` with schema ``https://api.biosimulators.org/openapi.json#/components/schemas/Simulator``,
            or two keys ``id`` and ``version``, optional): specifications of simulators to use to check that the SED-ML file can be executed

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    errors_list = []
    warnings_list = []

    reader = SedmlSimulationReader()
    try:
        with warnings.catch_warnings():
            warnings.simplefilter("ignore", BioSimulatorsWarning)
            sed_doc = reader.run(filename)
        errors_list.extend(reader.errors)
        warnings_list.extend(reader.warnings)
    except ValueError:
        if reader.errors:
            return reader.errors, reader.warnings
        else:
            raise

    excessive_steps_warnings = []
    for simulation in sed_doc.simulations:

        if isinstance(simulation, UniformTimeCourseSimulation) and simulation.number_of_steps > max_number_of_time_course_steps:
            excessive_steps_warnings.append(['`{}`: {} steps'.format(simulation.id, simulation.number_of_steps)])
    if excessive_steps_warnings:
        warnings_list.append(['Some time courses may have unnecessary numbers of steps.', excessive_steps_warnings])

    if simulators is not None:
        fid, archive_filename = tempfile.mkstemp()
        os.close(fid)

        build_combine_archive(dirname, [os.path.relpath(filename, dirname)], archive_filename)

        has_capable_simulator = False
        exec_errors = []
        for simulator in simulators:
            if 'algorithms' not in simulator:
                simulator = biosimulators_utils.simulator.specs.get_simulator_specs(
                    simulator['id'], simulator.get('version', None) or 'latest')

            if biosimulators_utils.simulator.specs.does_simulator_have_capabilities_to_execute_sed_document(
                    sed_doc, simulator, alg_substitution_policy=AlgorithmSubstitutionPolicy.SAME_VARIABLES):
                has_capable_simulator = True

                out_dir = tempfile.mkdtemp()

                try:
                    exec_sedml_docs_in_archive_with_containerized_simulator(
                        archive_filename, out_dir, simulator['image']['url'])
                except RuntimeError as exception:
                    exec_errors.append(['{}:{} could not execute the file.'.format(
                        simulator['id'], simulator['version']), [[str(exception)]]])

                shutil.rmtree(out_dir)

        os.remove(archive_filename)

        if not has_capable_simulator:
            warnings_list.append(['The executability could not be verified because no simulator has the capability to execute the file.'])
        if exec_errors:
            errors_list.append(['One or more simulators could not execute the file.', exec_errors])

    return errors_list, warnings_list


def validate_svg_file(filename):
    """ Determine if a SVG file is valid

    Args:
        filename (:obj:`str`): path to SVG file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    result = subprocess.run(['svglint', filename], check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode == 0:
        return [], []
    else:
        return [[result.stderr.decode()]], []


def validate_vcml_file(filename):
    """ Determine if an VCML file is valid

    Args:
        filename (:obj:`str`): path to VCML file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    errors, warnings = validate_xml_file(filename)

    with open(filename, 'rb') as file:
        if 'SBML Model could not be automatically converted to VCML'.encode() in file.read():
            errors.append(['`{}` does not represent a valid model.'.format(filename)])

    return errors, warnings


def validate_xml_file(filename):
    """ Determine if an XML file is valid

    Args:
        filename (:obj:`str`): path to XML file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    try:
        root = lxml.etree.parse(filename).getroot()
    except Exception as exception:
        return [[str(exception)]], []

    default_ns = root.nsmap.get(None, '')
    if default_ns.startswith('http://www.sbml.org/'):
        errors = []
        warnings = []

        namespaces = {
            "CopasiMT": "http://www.copasi.org/RDF/MiriamTerms#",
            "bqmodel": "http://biomodels.net/model-qualifiers/",
            "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
        }

        metadata_warnings = []

        invalid_metadata = (
            root.xpath('.//CopasiMT:unknown', namespaces=namespaces)
            + root.xpath('.//bqmodel:unknownQualifier', namespaces=namespaces)
            + root.xpath('.//*[contains(@rdf:resource, "urn:miriam:unknown")]', namespaces=namespaces)
        )
        for el in invalid_metadata:
            metadata_warnings.append(['L{}: {}:{}'.format(el.sourceline, el.prefix, el.tag.rpartition('}')[2])])

        if metadata_warnings:
            warnings.append(['Some of the metadata in `{}` is invalid.'.format(filename), metadata_warnings])

        temp_errors, temp_warnings = validate_sbml_file(filename)
        errors.extend(temp_errors)
        warnings.extend(temp_warnings)

        return errors, warnings

    elif re.match(r'^http://identifiers\.org/combine\.specifications/omex-manifest($|\.)', default_ns):
        return [[(
            'BioModels entries should not contain manifests for COMBINE/OMEX archives. '
            'The BioModels platform automatically generates a manifest for each entry.'
        )]], []

    elif root.nsmap.get('bp', '').startswith('http://www.biopax.org/release/') and os.path.splitext(filename)[1] != '.owl':
        return [['BioPAX files should have the extension `.owl`']], []

    elif default_ns.startswith('http://www.copasi.org/static/schema') and os.path.splitext(filename)[1] != '.cps':
        return [['COPASI files should have the extension `.cps`']], []

    elif default_ns.startswith('http://sed-ml.org/') and os.path.splitext(filename)[1] != '.sedml':
        return [['SED-ML files should have the extension `.sedml`']], []

    elif default_ns.startswith('http://www.w3.org/2000/svg') and os.path.splitext(filename)[1] != '.svg':
        return [['SVG files should have the extension `.svg`']], []

    elif default_ns.startswith('http://sourceforge.net/projects/vcell/vcml') and os.path.splitext(filename)[1] != '.vcml':
        return [['VCell files should have the extension `.vcml`']], []

    return [], []


def validate_xpp_file(filename):
    """ Determine if an XPP file is valid

    Args:
        filename (:obj:`str`): path to XPP file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    filename = os.path.relpath(filename, '.')
    result = subprocess.run(['xppaut', filename, '-qics'],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            check=False)
    stdout = result.stdout.decode()
    if result.returncode == 0:
        if '\n Error ' in stdout:
            return [[stdout]], []
        else:
            return [], []
    else:
        return [], [['`{}` could not be validated because XPP failed.'.format(filename), [[stdout]]]]


def validate_zip_file(filename):
    """ Determine if an zip archive file is valid

    Args:
        filename (:obj:`str`): path to zip archive file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    temp_dirname = tempfile.mkdtemp()
    try:
        with open(filename, 'rb') as file:
            zip_file = zipfile.ZipFile(file, mode='r')
            zip_file.extractall(temp_dirname)
        shutil.rmtree(temp_dirname)
        return [], []
    except zipfile.BadZipFile as exception:
        shutil.rmtree(temp_dirname)
        return [[str(exception)]], []


EXTENSION_VALIDATOR_MAP = {
    '.cps': {
        'description': 'COPASI',
        'validator': validate_copasi_file_in_subprocess,
    },
    '.gif': {
        'description': 'GIF image',
        'validator': lambda filename: validate_image_file(filename, ImageFormat.gif),
    },
    '.ipynb': {
        'description': 'IPython/Jupyter notebook',
        'validator': validate_ipynb_notebook_file,
    },
    '.jpeg': {
        'description': 'JPEG image',
        'validator': lambda filename: validate_image_file(filename, ImageFormat.jpeg),
    },
    '.jpg': {
        'description': 'JPEG image',
        'validator': lambda filename: validate_image_file(filename, ImageFormat.jpeg),
    },
    # '.m': {
    #    'description': 'Octave script',
    #    'validator': validate_octave_file,
    # },
    '.mat': {
        'description': 'MATLAB data file',
        'validator': validate_matlab_data_file,
    },
    '.omex': {
        'description': 'COMBINE/OMEX archive',
        'validator': validate_combine_archive,
    },
    '.owl': {
        'description': 'OWL ontology',
        'validator': validate_owl_ontology_file,
    },
    '.pdf': {
        'description': 'PDF',
        'validator': validate_pdf_file,
    },
    '.png': {
        'description': 'PNG image',
        'validator': lambda filename: validate_image_file(filename, ImageFormat.png),
    },
    '.py': {
        'description': 'Python',
        'validator': validate_python_file,
    },
    '.sbml': {
        'description': 'SBML',
        'validator': validate_sbml_file,
    },
    '.sci': {
        'description': 'Scilab',
        'validator': validate_scilab_file,
    },
    '.sedml': {
        'description': 'SED-ML',
        'validator': validate_sedml_file,
    },
    '.sedx': {
        'description': 'SED-ML archive',
        'validator': validate_combine_archive,
    },
    '.svg': {
        'description': 'SVG',
        'validator': validate_svg_file,
    },
    '.vcml': {
        'description': 'VCML',
        'validator': validate_vcml_file,
    },
    '.xml': {
        'description': 'XML',
        'validator': validate_xml_file,
    },
    '.xpp': {
        'description': 'XPP',
        'validator': validate_xpp_file,
    },
    '.zip': {
        'description': 'Zip archive',
        'validator': validate_zip_file,
    }
}


def validate_entry(dirname, file_extensions=None, filenames=None, simulators=None):
    """ Validate an entry of the BioModels databse

    Args:
        dirname (:obj:`str): path to directory for a entry of the BioModels database
        file_extensions (:obj:`list` of :obj:`str`, optional): list of file extensions (e.g., `.png`) to validate. Default:
            validate all file extensions
        filenames (:obj:`list` of :obj:`str`, optional): list of specific files to validate.
            Overides the :obj:`file_extensions` argument. Default: validate all files.
        simulators (:obj:`list` of :obj:`dict` with schema ``https://api.biosimulators.org/openapi.json#/components/schemas/Simulator``,
            or two keys ``id`` and ``version``, optional): specifications of simulators to use to check that SED-ML files can be executed

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    errors = []
    warnings = []

    # get names of files to validate
    if filenames:
        filenames = [os.path.join(dirname, filename) for filename in filenames]

    else:
        if file_extensions:
            filenames = []
            for file_extension in file_extensions:
                filenames += glob.glob(os.path.join(dirname, '**', "*" + file_extension), recursive=True)

        else:
            filenames = glob.glob(os.path.join(dirname, '**', "*"), recursive=True)

    filenames.sort()

    # validate files
    for filename in filenames:
        temp_errors, temp_warnings = validate_filename(os.path.relpath(filename, dirname))
        errors.extend(temp_errors)
        warnings.extend(temp_warnings)

        ext = os.path.splitext(filename)[1].lower()

        file_type = EXTENSION_VALIDATOR_MAP.get(ext, None)
        if file_type:
            kwargs = {}
            if file_type['validator'] == validate_sedml_file:
                kwargs['dirname'] = dirname
                kwargs['simulators'] = simulators

            file_errors, file_warnings = file_type['validator'](filename, **kwargs)
            if file_errors:
                errors.append(['`{}` is not a valid {} file.'.format(filename, file_type['description']), file_errors])
            if file_warnings:
                warnings.append(['`{}` may not be a valid {} file.'.format(filename, file_type['description']), file_warnings])

        else:
            warnings.append(['Validation is not available for `{}` file `{}`.'.format(ext, filename)])

    # raise warnings
    return errors, warnings
