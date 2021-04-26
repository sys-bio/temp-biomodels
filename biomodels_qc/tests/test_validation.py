from biomodels_qc import validation
from biosimulators_utils.sedml.io import SedmlSimulationReader
from biosimulators_utils.utils.core import flatten_nested_list_of_strings
from unittest import mock
import json
import libsbml
import os
import shutil
import tempfile
import unittest


class ValidationTestCase(unittest.TestCase):
    FIXTURE_DIRNAME = os.path.join(os.path.dirname(__file__), 'fixtures')

    def setUp(self):
        self.temp_dirname = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dirname)

    def test_validate_entry(self):
        valid_dirname = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000724')
        errors, warnings = validation.validate_entry(valid_dirname)
        self.assertEqual(errors, [])
        self.assertIn('uses data from repeated tasks', flatten_nested_list_of_strings(warnings))

        with open(os.path.join(self.temp_dirname, 'abc.xyz'), 'w') as file:
            pass
        errors, warnings = validation.validate_entry(self.temp_dirname)
        self.assertEqual(errors, [])
        self.assertIn('not available for `.xyz`', flatten_nested_list_of_strings(warnings))

        invalid_dirname = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693')
        errors, warnings = validation.validate_entry(invalid_dirname)
        self.assertIn('is not a valid XPP', flatten_nested_list_of_strings(errors))
        self.assertIn('not available for `.sci`', flatten_nested_list_of_strings(warnings))

        errors, warnings = validation.validate_entry(invalid_dirname, filenames=['BIOMD0000000693.png'])
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        errors, warnings = validation.validate_entry(invalid_dirname, file_extensions=['.png'])
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        with mock.patch('biomodels_qc.validation.validate_image_file', return_value=([], [['Warning']])):
            errors, warnings = validation.validate_entry(invalid_dirname, file_extensions=['.png'])
        self.assertEqual(errors, [])
        self.assertNotEqual(warnings, [])

    def test_validate_copasi_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000042', 'BIOMD0000000042.cps')
        errors, warnings = validation.validate_copasi_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693', 'BIOMD0000000693.png')
        errors, warnings = validation.validate_copasi_file(png_filename)
        self.assertIn('Unrecognized content format', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_image_file(self):
        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693', 'BIOMD0000000693.png')

        errors, warnings = validation.validate_image_file(png_filename, validation.ImageFormat.png)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        errors, warnings = validation.validate_image_file(png_filename, validation.ImageFormat.jpg)
        self.assertIn('is not a valid jpeg image', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

        jpg_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000920', 'figure.jpg')

        errors, warnings = validation.validate_image_file(jpg_filename, validation.ImageFormat.png)
        self.assertIn('is not a valid png image', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

        errors, warnings = validation.validate_image_file(jpg_filename, validation.ImageFormat.jpg)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

    def test_validate_ipynb_notebook_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000562', 'BIOMD0000000561-notebook.ipynb')
        errors, warnings = validation.validate_ipynb_notebook_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693', 'BIOMD0000000693.png')
        errors, warnings = validation.validate_ipynb_notebook_file(png_filename)
        self.assertIn('The file has JSON syntax errors', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

        bad_filename = os.path.join(self.temp_dirname, 'file.ipynb')
        with open(filename, 'rb') as file:
            notebook = json.load(file)
        notebook.pop('nbformat')
        with open(bad_filename, 'w') as file:
            json.dump(notebook, file)
        errors, warnings = validation.validate_ipynb_notebook_file(bad_filename)
        self.assertIn('The file does not have a `nbformat` attribute', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

        bad_filename = os.path.join(self.temp_dirname, 'file.ipynb')
        with open(filename, 'rb') as file:
            notebook = json.load(file)
        notebook['worksheets2'] = notebook.pop('worksheets')
        with open(bad_filename, 'w') as file:
            json.dump(notebook, file)
        errors, warnings = validation.validate_ipynb_notebook_file(bad_filename)
        self.assertIn('not consistent with the IPython/Jupyter notebook schema', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_matlab_data_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000822', 'simbiodata.mat')
        errors, warnings = validation.validate_matlab_data_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693', 'BIOMD0000000693.png')
        errors, warnings = validation.validate_matlab_data_file(png_filename)
        self.assertIn('Unknown mat file type', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_owl_ontology_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692-biopax2.owl')
        errors, warnings = validation.validate_owl_ontology_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693', 'BIOMD0000000693.png')
        errors, warnings = validation.validate_owl_ontology_file(png_filename)
        self.assertIn('NTriples parsing error', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_pdf_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.pdf')
        errors, warnings = validation.validate_pdf_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.png')
        errors, warnings = validation.validate_pdf_file(png_filename)
        self.assertIn('EOF marker not found', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_python_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000600', 'CurationPlot.py')
        errors, warnings = validation.validate_python_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.png')
        errors, warnings = validation.validate_python_file(png_filename)
        self.assertIn('cannot contain null bytes', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_sbml_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692_url.xml')
        errors, warnings = validation.validate_sbml_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        bad_filename = os.path.join(self.FIXTURE_DIRNAME, 'invalid_sbml.xml')
        errors, warnings = validation.validate_sbml_file(bad_filename)
        self.assertIn('must not contain undefined elements', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

        bad_filename = os.path.join(self.FIXTURE_DIRNAME, 'invalid_sbml.xml')
        with mock.patch.object(libsbml.SBMLError, 'isWarning', return_value=True):
            errors, warnings = validation.validate_sbml_file(bad_filename)
        self.assertEqual(errors, [])
        self.assertIn('must not contain undefined elements', flatten_nested_list_of_strings(warnings))

    def test_validate_sedml_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000724', 'Theinmozhi_2018.sedml')
        errors, warnings = validation.validate_sedml_file(filename)
        self.assertEqual(errors, [])
        self.assertIn('uses data from repeated tasks', flatten_nested_list_of_strings(warnings))

        bad_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'MODEL4968912141.sedml')
        errors, warnings = validation.validate_sedml_file(bad_filename)
        self.assertIn('Model `model` is invalid.', flatten_nested_list_of_strings(errors))
        self.assertIn('BIOMD0000000692/model.xml` is not a file.', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

        with self.assertRaises(RuntimeError):
            with mock.patch.object(SedmlSimulationReader, 'run', side_effect=RuntimeError):
                validation.validate_sedml_file(bad_filename)

        with self.assertRaises(ValueError):
            with mock.patch.object(SedmlSimulationReader, 'run', side_effect=ValueError):
                validation.validate_sedml_file(bad_filename)

    def test_validate_sedml_file_with_execution(self):
        dirname = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000806')
        filename = os.path.join(dirname, 'Macrophages Plasticity a.sedml')

        errors, warnings = validation.validate_sedml_file(filename, dirname=dirname, simulators=[{'id': 'tellurium', 'version': 'latest'}])
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        errors, warnings = validation.validate_sedml_file(filename, dirname=dirname, simulators=[{'id': 'copasi', 'version': 'latest'}])
        self.assertEqual(errors, [])
        self.assertIn('no simulator has the capability', flatten_nested_list_of_strings(warnings))

        with mock.patch('biosimulators_utils.simulator.specs.does_simulator_have_capabilities_to_execute_sed_document', return_value=True):
            errors, warnings = validation.validate_sedml_file(filename, dirname=dirname, simulators=[{'id': 'copasi', 'version': 'latest'}])
            self.assertIn("could not execute the archive", flatten_nested_list_of_strings(errors))
            self.assertEqual(warnings, [])

    def test_validate_svg_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.svg')
        errors, warnings = validation.validate_svg_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.png')
        errors, warnings = validation.validate_svg_file(png_filename)
        self.assertNotEqual(errors, [])
        self.assertEqual(warnings, [])

    def test_validate_vcml_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000001', 'BIOMD0000000001.vcml')
        errors, warnings = validation.validate_vcml_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.png')
        errors, warnings = validation.validate_vcml_file(png_filename)
        self.assertNotEqual(errors, [])
        self.assertEqual(warnings, [])

    def test_validate_xml_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692_url.xml')
        errors, warnings = validation.validate_xml_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        bad_filename = os.path.join(self.FIXTURE_DIRNAME, 'invalid_sbml.xml')
        errors, warnings = validation.validate_xml_file(bad_filename)
        self.assertIn('must not contain undefined elements', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.svg')
        errors, warnings = validation.validate_xml_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.png')
        errors, warnings = validation.validate_xml_file(png_filename)
        self.assertIn('Start tag expected', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_xpp_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.xpp')
        errors, warnings = validation.validate_xpp_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        bad_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000693', 'BIOMD0000000693.xpp')
        errors, warnings = validation.validate_xpp_file(bad_filename)
        self.assertIn('Error allocating or compiling', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])

    def test_validate_zip_file(self):
        filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000522', 'SM9.zip')
        errors, warnings = validation.validate_zip_file(filename)
        self.assertEqual(errors, [])
        self.assertEqual(warnings, [])

        png_filename = os.path.join(self.FIXTURE_DIRNAME, 'BIOMD0000000692', 'BIOMD0000000692.png')
        errors, warnings = validation.validate_zip_file(png_filename)
        self.assertIn('File is not a zip file', flatten_nested_list_of_strings(errors))
        self.assertEqual(warnings, [])
