import enum
import os
import yaml

FINAL_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'final')

with open(__file__.replace('.py', '.yml'), 'r') as file:
    FIXES = yaml.load(file, Loader=yaml.Loader)


class FixType(str, enum.Enum):
    """ Type of manual fix """
    replace_text = 'replace_text'
    rename_file = 'rename_file'


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

        if fix['type'] == FixType.replace_text.value:
            with open(filename, 'rb') as file:
                contents = file.read()

            assert fix['old'].encode() in contents, "Text could not be replaced in `{}`".format(filename)
            contents = contents.replace(fix['old'].encode(), fix['new'].encode())

            with open(filename, 'wb') as file:
                file.write(contents)

        elif fix['type'] == FixType.rename_file.value:
            os.rename(filename, os.path.join(working_dir, id, fix['new']))

    return sorted(set(fix['filename'] for fix in fixes))
