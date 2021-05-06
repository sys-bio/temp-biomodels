from lxml import etree
import glob
import os
import shutil


def run(dirname):
    """ Change the extensions of SED-ML files to ``.sedml``

    Args:
        dirname (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)

    Returns:
        :obj:`list` of :obj:`str`: list of corrected files
    """
    changed = []

    xml_filenames = glob.glob(os.path.join(dirname, '**', '*.xml'), recursive=True)
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
