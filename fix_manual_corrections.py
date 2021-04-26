import os
import yaml

FINAL_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'final')

with open(__file__.replace('.py', '.yml'), 'r') as file:
    FIXES = yaml.load(file, Loader=yaml.Loader)


def run(id, working_dir):
    """ Fix the namespaces in a SED-ML file and save the file in place

    * Remove duplicate SED-ML namespace declarations -- automatically fixed by LXML
    * Add namespaces for models

    Args:
        id (:obj:`str`): id of BioModels entry
        working_dir (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)

    Returns:
        :obj:`list` of :obj:`str`: list of corrected files
    """
    fixes = FIXES.get(id, None)
    if not fixes:
        return []

    for fix in fixes:
        filename = os.path.join(working_dir, id, fix['filename'])

        with open(filename, 'r') as file:
            contents = file.read()

        contents = contents.replace(fix['old'], fix['new'])

        with open(filename, 'w') as file:
            file.write(contents)

    return sorted(set(fix['filename'] for fix in fixes))
