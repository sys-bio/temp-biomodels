from biomodels_qc.biomodels_qc.utils import is_sbml_file, does_sbml_file_represent_core_kinetic_model
import glob
import itertools
import os


def run(dirname):
    has_non_core_model = False
    for filename in glob.glob(os.path.join(dirname, '**', '*.xml'), recursive=True):
        if is_sbml_file(filename) and not does_sbml_file_represent_core_kinetic_model(filename):
            has_non_core_model = True
            break

    if has_non_core_model:
        for filename in itertools.chain(
            glob.glob(os.path.join(dirname, '**', '*-matlab.m'), recursive=True),
            glob.glob(os.path.join(dirname, '**', '*-octave.m'), recursive=True),
            glob.glob(os.path.join(dirname, '**', '*.sci'), recursive=True),
            glob.glob(os.path.join(dirname, '**', '*.vcml'), recursive=True),
            glob.glob(os.path.join(dirname, '**', '*.xpp'), recursive=True),
        ):
            os.remove(filename)
