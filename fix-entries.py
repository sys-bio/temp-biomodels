#!/usr/bin/env python3
# master program to fix the entries of BioModels

import add_universal_output_report
import decrease_excessive_numbers_of_time_course_steps
import fix_copasi_algorithms
import fix_filenames
import fix_manual_corrections
import fix_models_non_copasi
import fix_sbml_validity
import fix_sedml_extensions
import fix_sed_plot_names
import recreate_sedml_from_copasi
import remove_bad_images_created_by_sbfc
import remove_bad_octave_files
import remove_bad_scilab_files
import remove_bad_vcml_files
import remove_bad_pdfs
import remove_converted_files_for_non_kinetic_models
import remove_empty_containers_from_sedml_doc
import remove_non_sbml
import remove_unused_sedml_elements
import remove_urn_sbml_files
import remove_initial_rdf_file
import remove_omex
import remove_failed_pdfs
import rename_sbml_files
import rename_xpp_to_ode
import validate_sbml as validate_sbml_module

from biomodels_qc.utils import are_biopax_files_the_same, build_combine_archive
from biomodels_qc.warnings import BiomodelsQcWarning
from biosimulators_utils.combine.io import CombineArchiveWriter
from biosimulators_utils.warnings import BioSimulatorsWarning

import argparse
import functools
import glob
import multiprocessing
import os
import shutil
import tempfile
import warnings
import math

MANUALLY_FIXED_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'manual-fixes')
FINAL_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'final')

global_sbml_validation_errors = []


def get_entry_ids():
    """ Get the ids of the entries of BioModels

    Returns:
        :obj:`list` of :obj:`str`: ids of the entries of BioModels (e.g., ``["BIOMD0000000230"]``)
    """
    ids = [os.path.relpath(dirname, MANUALLY_FIXED_ENTRIES_DIR)
           for dirname in glob.glob(os.path.join(MANUALLY_FIXED_ENTRIES_DIR, 'BIOMD*'))]
    ids.sort()
    return ids


def fix_entries(ids, convert_files=False, guess_file_name=None, validate_sbml=False, display_warnings=True, processes=None, parallel=False):
    """ Fix the entries of BioModels

    Args:
        id (:obj:`list` of :obj:`str`): id (e.g., ``BIOMD0000000230``)
        convert_files (:obj:`bool`, optional): convert primary files to other formats
        guess_file_name (:obj:`str`, optional): path to record guesses
        validate_sbml (:obj:`bool`, optional): validate SBML files
        display_warnings (:obj:`bool`, optional): whether to display warnings
        processes (:obj:`bool`, optional): number of processes to use
    """
    print('Fixing {} entries ...'.format(len(ids)))
    if parallel:
        if processes is None:
            processes = os.cpu_count()
        _fix_entry_func = functools.partial(_fix_entry, convert_files=convert_files,
                                            guess_file_name=guess_file_name, validate_sbml=validate_sbml, display_warnings=display_warnings)
        with multiprocessing.Pool(processes=processes) as pool:
            pool.map(_fix_entry_func, ids)
        print('done')
    else:
        for id in ids:
            _fix_entry(id, convert_files=convert_files, guess_file_name=guess_file_name,
                       validate_sbml=validate_sbml, display_warnings=display_warnings)


def _fix_entry(id, convert_files=False, guess_file_name=None, validate_sbml=False, display_warnings=True):
    """ Fix an entry of BioModels

    Args:
        id (:obj:`str`): id (e.g., ``BIOMD0000000230``)
        convert_files (:obj:`bool`, optional): convert primary files to other formats
        guess_file_name (:obj:`str`, optional): path to record guesses
        validate_sbml (:obj:`bool`, optional): validate SBML files
        display_warnings (:obj:`bool`, optional): whether to display warnings
    """
    # print('  Fixing entry {} ... '.format(id))

    with warnings.catch_warnings():
        if not display_warnings:
            warnings.simplefilter("ignore", BiomodelsQcWarning)
            warnings.simplefilter("ignore", BioSimulatorsWarning)
        fix_entry(id, convert_files=convert_files, guess_file_name=guess_file_name, validate_sbml=validate_sbml)


def fix_entry(id, convert_files=False, guess_file_name=None, validate_sbml=False):
    """ Fix an entry of BioModels

    Args:
        id (:obj:`str`): id (e.g., ``BIOMD0000000230``)
        convert_files (:obj:`bool`, optional): convert primary files to other formats
        guess_file_name (:obj:`str`, optional): path to record guesses
        validate_sbml (:obj:`bool`, optional): validate SBML files
    """
    print("Fixing entry", id)

    if not os.path.isdir(FINAL_ENTRIES_DIR):
        os.makedirs(FINAL_ENTRIES_DIR)

    # start from manually fixed version of entry
    start_entry_dir = os.path.join(MANUALLY_FIXED_ENTRIES_DIR, id)
    temp_entry_dir = tempfile.mkdtemp()
    final_entry_dir = os.path.join(FINAL_ENTRIES_DIR, id)

    shutil.rmtree(temp_entry_dir)
    shutil.copytree(start_entry_dir, temp_entry_dir)

    ###################################################
    # Fix files/filenames
    fix_filenames.run(id, temp_entry_dir)
    fix_sedml_extensions.run(temp_entry_dir)

    omex_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.omex'), recursive=True)
    omex_filenames.sort()
    remove_omex.run(id, omex_filenames, temp_entry_dir)

    ###################################################
    # recreate files from COPASI, then fix the model sources
    # Collect lists of files
    sedml_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.sedml'), recursive=True)
    copasi_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.cps'), recursive=True)
    sbml_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.xml'), recursive=True)
    rdf_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.rdf'), recursive=True)
    pdf_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.pdf'), recursive=True)
    xpp_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.xpp'), recursive=True)
    sedml_filenames.sort()
    copasi_filenames.sort()
    sbml_filenames.sort()

    remove_urn_sbml_files.run(sbml_filenames)
    remove_initial_rdf_file.run(rdf_filenames)
    remove_failed_pdfs.run(pdf_filenames)
    remove_non_sbml.run(id, sbml_filenames)
    rename_sbml_files.run(id, sbml_filenames)
    rename_xpp_to_ode.run(xpp_filenames)

    # SED-ML files: recreate from COPASI, then fix the model sources.
    (sbml_msgs, sed_msgs, c_guesses) = recreate_sedml_from_copasi.run(sedml_filenames, copasi_filenames, sbml_filenames, id)
    nc_guesses = fix_models_non_copasi.run(sedml_filenames, sbml_filenames, id)

    # Write guesses to file for later checking:
    if guess_file_name:
        with open(guess_file_name, 'a') as guess_file:
            for guess in c_guesses:
                for entry in guess:
                    guess_file.write(entry)
                    guess_file.write(",")
                guess_file.write("\n")
            for guess in nc_guesses:
                for entry in guess:
                    guess_file.write(entry)
                    guess_file.write(",")
                guess_file.write("\n")

    ###################################################
    # Apply manual corrections
    fix_manual_corrections.run(id, temp_entry_dir)

    # Have to re-check filenames as some of them were renamed.
    sedml_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.sedml'), recursive=True)
    copasi_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.cps'), recursive=True)
    sbml_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.xml'), recursive=True)
    sedml_filenames.sort()
    copasi_filenames.sort()
    sbml_filenames.sort()

    fix_sbml_validity.run(id, sbml_filenames)

    sedml_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.sedml'), recursive=True)
    sedml_filenames.sort()

    remove_empty_containers_from_sedml_doc.run(sedml_filenames)
    decrease_excessive_numbers_of_time_course_steps.run(sedml_filenames)
    remove_unused_sedml_elements.run(id, sedml_filenames)
    fix_sed_plot_names.run(id, sedml_filenames)
    add_universal_output_report.run(sedml_filenames, sbml_filenames)

    fix_copasi_algorithms.run(id, temp_entry_dir)

    remove_bad_images_created_by_sbfc.run(temp_entry_dir)
    remove_bad_pdfs.run(temp_entry_dir)

    octave_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*-octave.m'), recursive=True)
    octave_filenames.sort()
    remove_bad_octave_files.run(octave_filenames)

    scilab_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.sci'), recursive=True)
    scilab_filenames.sort()
    remove_bad_scilab_files.run(scilab_filenames)

    vcml_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.vcml'), recursive=True)
    vcml_filenames.sort()
    remove_bad_vcml_files.run(vcml_filenames)

    remove_converted_files_for_non_kinetic_models.run(temp_entry_dir)

    ###################################################
    # Validate SBML files
    if validate_sbml:
        validate_sbml_module.run(id, sbml_filenames, global_sbml_validation_errors)

    ###################################################
    # Convert primary files to other formats
    if convert_files:
        from biomodels_qc.convert import convert_entry
        convert_entry(temp_entry_dir)

    for temp_filename in glob.glob(os.path.join(temp_entry_dir, '**', '*.owl'), recursive=True):
        rel_filename = os.path.relpath(temp_filename, temp_entry_dir)
        final_filename = os.path.join(final_entry_dir, rel_filename)

        # Model 183 takes *forever* to run through the biopax check.
        if os.path.isfile(final_filename) and (id == 'BIOMD0000000183' or id == 'BIOMD0000000235' or are_biopax_files_the_same(final_filename, temp_filename)):
            shutil.copyfile(final_filename, temp_filename)

    ###################################################
    # Build manifest
    # manifest_filename = os.path.join(temp_entry_dir, 'manifest.xml')
    # sedml_filenames = glob.glob(os.path.join(temp_entry_dir, '**', '*.sedml'), recursive=True)
    # sedml_locations = [os.path.relpath(path, temp_entry_dir) for path in sedml_filenames]
    # archive = build_combine_archive(temp_entry_dir, sedml_locations)
    # CombineArchiveWriter().write_manifest(archive.contents, manifest_filename)

    ###################################################
    # Move temporary directory to final location
    if os.path.isdir(final_entry_dir):
        shutil.rmtree(final_entry_dir)
    shutil.move(temp_entry_dir, final_entry_dir)
#    command = "C:/Users/Lucian/Desktop/dos2unix-7.3.4-win32/bin/dos2unix.exe " + final_entry_dir + "/*.xml"
#    print(command)
#    os.system(command)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Fix one or more entries in BioModels.'
    )
    parser.add_argument(
        '--max-entries', type=int, default=None,
        help='Maximum number of entries to fix. Default: fix all entries.')

    parser.add_argument(
        '--entry', type=str, nargs='*',
        help='Ids of entries to fix (e.g., `BIOMD0000000001`). Default: fix all entries.',
        default=[], dest='entry_ids',
    )

    parser.add_argument(
        '--convert-files',
        help='Converting SBML files to alternative formats.',
        action='store_true'
    )

    parser.add_argument(
        '--validate-sbml',
        help='Validate SBML files.',
        action='store_true',
    )

    parser.add_argument(
        '--parallel',
        help='Run entries in parallel.',
        action='store_true',
    )

    parser.add_argument(
        '--do-not-display-warnings',
        help='Do not display warnings.',
        action='store_true',
    )

    parser.add_argument(
        '--continue-from', type=str, nargs=1,
        help='Id of first entry to fix (e.g., `BIOMD0000000234`). Default: BIOMD0000000001.',
        default=None, dest='first_entry',
    )

    parser.add_argument(
        '--processes', type=int,
        help='Number of processes to use. Default: Number of processors minus 1.',
        default=None,
    )

    parser.add_argument(
        '--num-jobs',
        help='Amount of parallelism.',
        default=1,
        type=int,
    )

    parser.add_argument(
        '--job',
        help='Index of job within "--num-jobs" to execute',
        default=0,
        type=int,
    )

    args = parser.parse_args()
    if args.entry_ids:
        ids = args.entry_ids
    else:
        ids = get_entry_ids()
        nids = len(ids)
        if args.max_entries:
            nids = min(nids, args.max_entries)
        span = math.ceil(nids/args.num_jobs)
        init = args.job*span
        final = min(init + span, nids)
        ids = ids[init:final]

    low_ids = []
    if args.first_entry:
        for entry in ids:
            if entry < args.first_entry[0]:
                low_ids.append(entry)
    for low_id in low_ids:
        ids.remove(low_id)

    guess_file_name = "guesses.csv"
    #args.convert_files = True
    #args.validate_sbml = True
    fix_entries(ids, convert_files=args.convert_files, guess_file_name=guess_file_name, validate_sbml=args.validate_sbml,
                display_warnings=not args.do_not_display_warnings, processes=args.processes, parallel=args.parallel)

    if args.validate_sbml:
        err_file = open("sbml_validation.csv", "w")
        for err in global_sbml_validation_errors:
            err[2] = err[2].replace("\n", " -- ")
            err[2] = err[2].replace('"', "'")
            err_file.write(err[0] + "," + err[1] + ',"' + err[2] + '"\n')
        err_file.close()
    
    git_add_file = open("git_add.bat", "w")
    for id in ids:
        git_add_file.write("git add final/" + id + "/*\n")
    git_add_file.close()
