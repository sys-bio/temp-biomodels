import enum
import os
import yaml

with open(__file__.replace('.py', '.yml'), 'r') as file:
    FIXES = yaml.load(file, Loader=yaml.Loader)


class FixType(str, enum.Enum):
    """ Type of manual fix """
    replace_text = 'replace_text'
    rename_file = 'rename_file'
    remove_file = 'remove_file'


def run(id, working_dir):
    """ Fix the namespaces in a SED-ML file and save the file in place

    * Remove duplicate SED-ML namespace declarations -- automatically fixed by LXML
    * Add namespaces for models

    Args:
        id (:obj:`str`): id of BioModels entry
        working_dir (:obj:`str`): directory of entries to change

    Returns:
        :obj:`list` of :obj:`str`: list of corrected files
    """
    fixes = FIXES.get(id, None)
    if not fixes:
        return []

    for fix in fixes:
        filename = os.path.join(working_dir, fix['filename'])

        if fix['type'] == FixType.replace_text.value:
            with open(filename, 'rb') as file:
                contents = file.read()
            try:
                old = fix['old'].replace('\\t', "\t")
                new = fix['new'].replace('\\t', "\t")
                assert old.encode() in contents, "Text could not be replaced in `{}`\n\n{}\n\n{}".format(filename, old, contents)
                contents = contents.replace(old.encode(), new.encode())
            except Exception:
                old = fix['old'].replace('\\t', "\t").replace('\n', '\r\n')
                new = fix['new'].replace('\\t', "\t").replace('\n', '\r\n')
                assert old.encode() in contents, "Text could not be replaced in `{}`\n\n{}\n\n{}".format(filename, old, contents)
                contents = contents.replace(old.encode(), new.encode())

            with open(filename, 'wb') as file:
                file.write(contents)

        elif fix['type'] == FixType.rename_file.value:
            os.rename(filename, os.path.join(working_dir, fix['new']))

        elif fix['type'] == FixType.remove_file.value:
            os.remove(filename)

        else:
            raise NotImplementedError('Fix type `{}` is not supported.'.format(fix['type']))

    return sorted(set(fix['filename'] for fix in fixes))
