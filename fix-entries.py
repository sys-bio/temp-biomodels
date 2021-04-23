#!/usr/bin/env python3
# master program to fix the entries of BioModels

import argparse
import fix_namespaces_in_sedml_doc
import glob
import os
import shutil
import sys

MANUALLY_FIXED_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'fixed-entries')
FIXED_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'fully-fixed-entries')


def get_entry_ids():
    """ Get the ids of the entries of BioModels

    Returns:
        :obj:`list` of :obj:`str`: ids of the entries of BioModels (e.g., ``["BIOMD0000000230"]``)
    """
    return sorted(os.path.relpath(dirname, MANUALLY_FIXED_ENTRIES_DIR)
                  for dirname in glob.glob(os.path.join(MANUALLY_FIXED_ENTRIES_DIR, 'BIOMD*')))


def fix_entries(ids):
    """ Fix the entries of BioModels

    Args:
        max_entries (:obj:`int`, optional): maximum number of entries to fix
    """
    print('Fixing {} entries ...'.format(len(ids)))
    for i_entry, id in enumerate(ids):
        print('  Fixing entry {}: {} ... '.format(i_entry + 1, id), end='')
        sys.stdout.flush()

        fix_entry(id)

        print('done')


def fix_entry(id):
    """ Fix an entry of BioModels

    Args:
        id (:obj:`str`): id (e.g., ``BIOMD0000000230``)
    """
    if not os.path.isdir(FIXED_ENTRIES_DIR):
        os.makedirs(FIXED_ENTRIES_DIR)

    # start from manually fixed version of entry
    from_dir = os.path.join(MANUALLY_FIXED_ENTRIES_DIR, id)
    to_dir = os.path.join(FIXED_ENTRIES_DIR, id)
    if os.path.isdir(to_dir):
        shutil.rmtree(to_dir)
    shutil.copytree(from_dir, to_dir)

    # apply automated fixes
    sedml_filenames = glob.glob(os.path.join(FIXED_ENTRIES_DIR, id, '**', '*.sedml'), recursive=True)
    for filename in sedml_filenames:
        fix_namespaces_in_sedml_doc.run(filename)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Fix 1 or more entries in BioModels.'
    )
    parser.add_argument(
        '--max-entries', type=int, default=None,
        help='Maximum number of entries to fix. Default: fix all entries.')

    parser.add_argument(
        '--entry', type=str, nargs='*',
        help='Ids of entries to fix (e.g., `BIOMD0000000001`). Default: fix all entries.',
        default=[], dest='entry_ids',
    )

    args = parser.parse_args()
    if args.entry_ids:
        ids = args.entry_ids
    else:
        ids = get_entry_ids()[0:args.max_entries]
    fix_entries(ids)
