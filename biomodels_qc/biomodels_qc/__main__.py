""" Command-line program for quality controlling BioModels and converting entries to alternative formats

:Author: Jonathan Karr <karr@mssm.edu>
:Date: 2021-04-24
:Copyright: 2021, Center for Reproducible Biomedical Modeling
:License: MIT
"""

from .convert import convert_entry
from .validation import validate_entry
import cement
import biomodels_qc


class BaseController(cement.Controller):
    """ Base controller for command line application """

    class Meta:
        label = 'base'
        description = (
            "Program for quality controlling the BioModels database."
        )
        help = (
            "Program for quality controlling entries of the BioModels database and converting "
            "the primary files for entries to alternative formats."
        )
        arguments = [
            (['-v', '--version'], dict(
                action='version',
                version=biomodels_qc.__version__,
            )),
        ]

    @cement.ex(hide=True)
    def _default(self):
        self._parser.print_help()


class ValidateEntryController(cement.Controller):
    """ Controller for validating an entry of the BioModels database """

    class Meta:
        label = 'validate'
        stacked_on = 'base'
        stacked_type = 'nested'
        help = "Validate an entry of the BioModels database"
        description = "Validate an entry of the BioModels database"
        arguments = [
            (
                ['dir'],
                dict(
                    type=str,
                    help='Path to a directory which contains the files for an entry of the BioModels database',
                ),
            ),
        ]

    @cement.ex(hide=True)
    def _default(self):
        args = self.app.pargs
        try:
            validate_entry(args.dir)
        except ValueError as exception:
            raise SystemExit(str(exception))
        print('The entry at `{}` is valid.'.format(args.dir))


class ConvertEntryProjectController(cement.Controller):
    """ Controller for converting the primary files for an entry of the BioModels database to alternative formats """

    class Meta:
        label = 'convert'
        stacked_on = 'base'
        stacked_type = 'nested'
        help = "Convert "
        description = (
            "Convert the primary files for an entry of the BioModels database to alternative formats "
            "such as BioPAX, MATLAB/Octave, and XPP."
        )
        arguments = [
            (
                ['dir'],
                dict(
                    type=str,
                    help='Path to a directory which contains the files for an entry of the BioModels database',
                ),
            ),
        ]

    @cement.ex(hide=True)
    def _default(self):
        args = self.app.pargs
        convert_entry(args.dir)


class App(cement.App):
    """ Command line application """
    class Meta:
        label = 'biomodels-qc'
        base_controller = 'base'
        handlers = [
            BaseController,
            ValidateEntryController,
            ConvertEntryProjectController,
        ]


def main():
    with App() as app:
        app.run()
