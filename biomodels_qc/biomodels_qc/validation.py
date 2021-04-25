""" Methods for validating entries of the BioModels database.

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from biosimulators_utils.sedml.io import SedmlSimulationReader
from biosimulators_utils.warnings import BioSimulatorsWarning
import ast
import COPASI
import enum
import glob
import imghdr
import json
import libsbml
import lxml.etree
import nbformat
import os
import owlready2
import PyPDF2
import scipy.io
import shutil
import subprocess
import tempfile
import warnings
import zipfile

__all__ = [
    'validate_entry',
    'validate_copasi_file',
    'validate_image_file',
    'validate_ipynb_notebook_file',
    'validate_matlab_data_file',
    'validate_owl_ontology_file',
    'validate_pdf_file',
    'validate_python_file',
    'validate_sbml_file',
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

    errors = []
    warnings = []
    for i_error in range(doc.getNumErrors()):
        sbml_error = doc.getError(i_error)
        if sbml_error.isInfo() or sbml_error.isWarning():
            warnings.append([sbml_error.getMessage()])
        else:
            errors.append([sbml_error.getMessage()])

    return errors, warnings


def validate_sedml_file(filename):
    """ Determine if a SED-ML file is valid

    Args:
        filename (:obj:`str`): path to SED-ML file

    Returns:
        :obj:`tuple`:

            * nested :obj:`list` of :obj:`str`: nested list of errors
            * nested :obj:`list` of :obj:`str`: nested list of warnings
    """
    reader = SedmlSimulationReader()
    try:
        with warnings.catch_warnings():
            warnings.simplefilter("ignore", BioSimulatorsWarning)
            reader.run(filename)
        return reader.errors, reader.warnings
    except Exception:
        if reader.errors:
            return reader.errors, reader.warnings
        else:
            raise


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
    return validate_xml_file(filename)


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
        if root.nsmap.get(None, '').startswith('http://www.sbml.org/'):
            return validate_sbml_file(filename)
        return [], []
    except Exception as exception:
        return [[str(exception)]], []


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
    if result.returncode == 0 and '\n Error ' not in stdout:
        return [], []
    else:
        return [[stdout]], []


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
        'validator': validate_copasi_file,
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
    '.mat': {
        'description': 'MATLAB data file',
        'validator': validate_matlab_data_file,
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
    '.sedml': {
        'description': 'SED-ML',
        'validator': validate_sedml_file,
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


def validate_entry(dirname, file_extensions=None, filenames=None):
    """ Validate an entry of the BioModels databse

    Args:
        dir (:obj:`str): path to directory for a entry of the BioModels database
        file_extensions (:obj:`list` of :obj:`str`, optional): list of file extensions (e.g., `.png`) to validate. Default:
            validate all file extensions
        filenames (:obj:`list` of :obj:`str`, optional): list of specific files to validate.
            Overides the :obj:`file_extensions` argument. Default: validate all files.

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

    # validate files
    for filename in filenames:
        ext = os.path.splitext(filename)[1].lower()

        file_type = EXTENSION_VALIDATOR_MAP.get(ext, None)
        if file_type:
            file_errors, file_warnings = file_type['validator'](filename)
            if file_errors:
                errors.append(['`{}` is not a valid {} file.'.format(filename, file_type['description']), file_errors])
            if file_warnings:
                warnings.append(['`{}` may not be a valid {} file.'.format(filename, file_type['description']), file_warnings])

        else:
            warnings.append(['Validation is not available for `{}` file `{}`.'.format(ext, filename)])

    # raise warnings
    return errors, warnings
