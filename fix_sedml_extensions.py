from lxml import etree
import glob
import os
import shutil


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
    changed = []

    xml_filenames = glob.glob(os.path.join(working_dir, id, '**', '*.xml'), recursive=True)
    xml_filenames.sort()
    for xml_filename in xml_filenames:
        try:
            root = etree.parse(xml_filename).getroot()
            if root.nsmap[None].startswith('http://sed-ml.org/'):
                sedml_filename = xml_filename.replace('_SED-ML.xml', '.sedml')
                sedml_filename = sedml_filename.replace('-SEDML.xml', '.sedml')
                shutil.move(xml_filename, sedml_filename)
                changed.append(xml_filename)
        except etree.XMLSyntaxError:
            pass

    return changed
