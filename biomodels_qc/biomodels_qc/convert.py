""" Methods for converting the primary files for an entry of the BioModels database to alternative formats
such as BioPAX, MATLAB/Octave, and XPP.

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from .utils import get_smbl_files_for_entry, are_biopax_files_the_same, does_sbml_file_represent_core_kinetic_model
from .validation import validate_sbml_file, validate_xpp_file, validate_octave_file
from .warnings import FileCouldNotBeConvertedWarning
from biosimulators_utils.omex_meta.data_model import OmexMetadataOutputFormat
from biosimulators_utils.omex_meta.utils import build_omex_meta_file_for_model
from biosimulators_utils.sedml.data_model import Task
from biosimulators_utils.sedml.io import SedmlSimulationReader
from kisao import Kisao
from kisao.utils import get_ode_algorithms
import enum
import glob
import os
import shutil
import subprocess
import tempfile
import termcolor
import warnings

__all__ = [
    'convert_entry',
    'AltSbmlFormat',
    'convert_sbml',
    'run_sbf_converter',
]

_ODE_INTEGRATION_KISAO_TERM_IDS = None


def convert_entry(dirname, alt_sbml_formats=None):
    """ Convert the primary files for an entry of the BioModels database to alternative formats
    such as BioPAX, MATLAB/Octave, and XPP.

    Args:
        dir (:obj:`str): path to directory for a entry of the BioModels database
        alt_sbml_formats (:obj:`list` of :obj:`AltSbmlFormat`, optional): list of formats to convert
            SBML files to
    """
    alt_sbml_formats = alt_sbml_formats or AltSbmlFormat.__members__.values()

    module = globals()
    if not module['_ODE_INTEGRATION_KISAO_TERM_IDS']:
        ode_alg_ids = Kisao().get_term_ids(get_ode_algorithms())
        module['_ODE_INTEGRATION_KISAO_TERM_IDS'] = ode_alg_ids
    ode_integration_kisao_term_ids = module['_ODE_INTEGRATION_KISAO_TERM_IDS']

    has_sedml_task = False
    ode_simulation = False
    sed_ml_filenames = glob.glob(os.path.join(dirname, '**', "*.sedml"), recursive=True)
    sed_ml_filenames.sort()
    for filename in sed_ml_filenames:
        try:
            doc = SedmlSimulationReader().run(filename)
            for task in doc.tasks:
                has_sedml_task = True
                if isinstance(task, Task) and task.simulation.algorithm.kisao_id in ode_integration_kisao_term_ids:
                    ode_simulation = True
                    break

        except ValueError:
            pass

    for filename in get_smbl_files_for_entry(dirname, include_urn_files=False):
        alt_sbml_formats_for_file = list(alt_sbml_formats)

        if (
            (has_sedml_task and not ode_simulation)
            or not does_sbml_file_represent_core_kinetic_model(filename)
        ):
            for alt_sbml_format in [AltSbmlFormat.MATLAB, AltSbmlFormat.Octave, AltSbmlFormat.XPP]:
                alt_sbml_formats_for_file.remove(alt_sbml_format)

                if filename.endswith('_url.xml'):
                    old_final_converted_filename = filename[0:-8] + ALT_SBML_FORMAT_DATA[alt_sbml_format]['old_final_extension']
                    final_converted_filename = filename[0:-8] + ALT_SBML_FORMAT_DATA[alt_sbml_format]['final_extension']
                else:
                    old_final_converted_filename = os.path.splitext(
                        filename)[0] + ALT_SBML_FORMAT_DATA[alt_sbml_format]['old_final_extension']
                    final_converted_filename = os.path.splitext(filename)[0] + ALT_SBML_FORMAT_DATA[alt_sbml_format]['final_extension']

                if os.path.isfile(old_final_converted_filename):
                    os.remove(old_final_converted_filename)
                if os.path.isfile(final_converted_filename):
                    os.remove(final_converted_filename)

        for alt_sbml_format in alt_sbml_formats_for_file:
            try:
                format_data = ALT_SBML_FORMAT_DATA[alt_sbml_format]
                if filename.endswith('_url.xml'):
                    alt_filename = filename[0:-8] + format_data['final_extension']
                else:
                    alt_filename = os.path.splitext(filename)[0] + format_data['final_extension']

                fid, temp_filename = tempfile.mkstemp()
                os.close(fid)
                convert_sbml(filename, alt_sbml_format, temp_filename)

                move_to_alt_filename = True
                if alt_sbml_format in [AltSbmlFormat.BioPAX_l2, AltSbmlFormat.BioPAX_l3] and os.path.isfile(alt_filename):
                    move_to_alt_filename = not are_biopax_files_the_same(alt_filename, temp_filename)

                if move_to_alt_filename:
                    shutil.move(temp_filename, alt_filename)

                if alt_sbml_format == AltSbmlFormat.Octave and validate_octave_file(alt_filename)[0]:
                    warnings.warn(termcolor.colored('`{}` could not be converted to valid Octave file.'.format(filename)),
                                  FileCouldNotBeConvertedWarning)
                    os.remove(alt_filename)

                elif alt_sbml_format == AltSbmlFormat.SBML_URN and validate_sbml_file(alt_filename)[0]:
                    warnings.warn(termcolor.colored('`{}` could not be converted to valid SBML file.'.format(filename)),
                                  FileCouldNotBeConvertedWarning)
                    os.remove(alt_filename)

                elif alt_sbml_format == AltSbmlFormat.XPP and validate_xpp_file(alt_filename)[0]:
                    warnings.warn(termcolor.colored('`{}` could not be converted to valid XPP file.'.format(filename)),
                                  FileCouldNotBeConvertedWarning)
                    os.remove(alt_filename)
            except RuntimeError as e:
                warnings.warn(termcolor.colored('`{}` could not be converted: '.format(
                    filename) + str(e)), FileCouldNotBeConvertedWarning)


class AltSbmlFormat(str, enum.Enum):
    """ A format that an SBML file can be converted to """
    SBML_URN = 'SBML_URN'
    BioPAX_l2 = 'BioPAX_l2'
    BioPAX_l3 = 'BioPAX_l3'
    MATLAB = 'MATLAB'
    Octave = 'Octave'
    OMEX_Metadata = 'OMEX_Metadata'
    XPP = 'XPP'


ALT_SBML_FORMAT_DATA = {
    AltSbmlFormat.SBML_URN: {
        'format': AltSbmlFormat.SBML_URN,
        'sbfc_id': 'URL2URN',
        'init_extension': '-url2urn.xml',
        'old_final_extension': '_urn.xml',
        'final_extension': '_urn.xml',
    },
    AltSbmlFormat.BioPAX_l2: {
        'format': AltSbmlFormat.BioPAX_l2,
        'sbfc_id': 'SBML2BioPAX_l2',
        'init_extension': '-biopax2.owl',
        'old_final_extension': '-biopax2.owl',
        'final_extension': '-biopax2.owl',
    },
    AltSbmlFormat.BioPAX_l3: {
        'format': AltSbmlFormat.BioPAX_l3,
        'sbfc_id': 'SBML2BioPAX_l3',
        'init_extension': '-biopax3.owl',
        'old_final_extension': '-biopax3.owl',
        'final_extension': '-biopax3.owl',
    },
    AltSbmlFormat.MATLAB: {
        'format': AltSbmlFormat.MATLAB,
        'sbfc_id': 'SBML2Matlab',
        'init_extension': '.m',
        'old_final_extension': '.m',
        'final_extension': '-matlab.m',
    },
    AltSbmlFormat.Octave: {
        'format': AltSbmlFormat.Octave,
        'sbfc_id': 'SBML2Octave',
        'init_extension': '.m',
        'old_final_extension': '.m',
        'final_extension': '-octave.m',
    },
    AltSbmlFormat.OMEX_Metadata: {
        'format': AltSbmlFormat.OMEX_Metadata,
        'sbfc_id': None,
        'init_extension': '.rdf',
        'old_final_extension': '.rdf',
        'final_extension': '.rdf',
    },
    AltSbmlFormat.XPP: {
        'format': AltSbmlFormat.XPP,
        'sbfc_id': 'SBML2XPP',
        'init_extension': '.xpp',
        'old_final_extension': '.xpp',
        'final_extension': '.xpp',
    },
}


def convert_sbml(filename, alt_format, alt_filename):
    """ Convert a SBML file to another format

    * SBML (with URNs)
    * MATLAB
    * Octave
    * OMEX metadata
    * XPP

    Args:
        filename (:obj:`str`): path to SBML file
        alt_format (:obj:`AltSbmlFormat`): another format
        alt_filename (:obj:`str`): path to save converted file
    """
    format_data = ALT_SBML_FORMAT_DATA.get(alt_format, {})

    if format_data.get('sbfc_id', None):
        temp_dir = tempfile.mkdtemp()
        temp_filename = os.path.join(temp_dir, os.path.basename(filename))
        shutil.copyfile(filename, temp_filename)

        try:
            run_sbf_converter(temp_filename, format_data['sbfc_id'])
        except ValueError:
            shutil.rmtree(temp_dir)
            raise

        init_converted_filename = os.path.splitext(temp_filename)[0] + format_data['init_extension']
        shutil.move(init_converted_filename, alt_filename)

        try:
            _handle_sbf_converter_errors(filename, temp_filename, alt_filename, alt_format)
        finally:
            shutil.rmtree(temp_dir)

    elif format_data.get('format', None) == AltSbmlFormat.OMEX_Metadata:
        build_omex_meta_file_for_model(filename, alt_filename, metadata_format=OmexMetadataOutputFormat.rdfxml_abbrev)

    else:
        raise NotImplementedError('Format `{}` is not supported.'.format(alt_format))


def _handle_sbf_converter_errors(filename, temp_filename, alt_filename, alt_format):
    value_error = None
    error_log_filename = os.path.splitext(temp_filename)[0] + '.errorLog'
    if os.path.isfile(error_log_filename):
        with open(error_log_filename, 'r') as file:
            value_error = file.read()
        os.remove(error_log_filename)

    runtime_error = None
    with open(alt_filename, 'rb') as file:
        line = file.readline().decode()
        if line.startswith('####'):
            line = file.readline().decode()
            if line.startswith('#Something went wrong'):
                runtime_error = 'sbfConverter failed'

    if value_error is not None:
        os.remove(alt_filename)
        raise ValueError('`{}` could not be converted to {}:\n\n  {}'.format(
            filename, alt_format.name, value_error.replace('\n', '\n  ')))

    if runtime_error is not None:
        os.remove(alt_filename)
        raise RuntimeError('`{}` could not be converted to {}:\n\n  {}'.format(
            filename, alt_format.name, runtime_error.replace('\n', '\n  ')))


def run_sbf_converter(filename, format):
    """ Run the Systems Biology Format Converter (SBFC)

    Args:
        filename (:obj:`str`): path to file to convert
        format (:obj:`str`): format to convert file to

    Raises:
        :obj:`ValueError`: if the conversion failed
    """
    if os.name == 'nt':
        converter_loc = shutil.which('sbfConverter.bat')
    else:
        converter_loc = shutil.which('sbfConverter.sh')
    if converter_loc == None:
        raise RuntimeError("Unable to find the Systems Biology Format Converter.")
    sbf_converter_home = os.path.dirname(converter_loc)  # pragma: no cover
    jar_dirname = os.path.join(sbf_converter_home, 'lib')
    jar_filenames = glob.glob(os.path.join(jar_dirname, '*.jar'))
    jar_filenames.sort()
    jar_filenames.append(os.path.join(jar_dirname, 'paxtools-4.2/paxtools-4.2.0-no-jena.jar'))
    env = {
        'CLASSPATH': ':'.join(jar_filenames)
    }
    result = subprocess.run([
        'java',
        '-Dmiriam.xml.export={}/miriam.xml'.format(sbf_converter_home),
        'org.sbfc.converter.Converter',
        'SBMLModel',
        format,
        filename,
    ], env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=False)
    if result.returncode != 0:
        raise ValueError('The Systems Biology Format Converter failed:\n\n  {}'.format(
            result.stderr.decode().replace('\n', '\n  ')))
