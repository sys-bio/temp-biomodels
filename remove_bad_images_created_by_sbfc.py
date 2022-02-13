from xml.etree import ElementTree as et
from glob import glob
import os


def run(
        dirname: str
):
    """
    Remove bad PNG and SVG images created by the Systems Biology Format Converter (SBFC)

    Args:
        dirname (:obj:`str`): directory to remove images from
    """
    for svg_filename in glob(os.path.join(dirname, '*/*.svg')):
        try:
            tree = et.parse(svg_filename)
            root = tree.getroot()
            xml_string = et.tostring(root, encoding='unicode')
            if "no graph can be automatically generated" in xml_string:
                delete_images(svg_filename)
        except:
            delete_images(svg_filename)


def delete_images(svg_filename: str):
    """ Delete a SVG file and the corresponding PNG file

    Args:
       svg_filename (:obj:`str`): path to SVG file to delete
    """
    # delete the SVG file
    print(f'SVG image {svg_filename} is erroneous.')
    os.remove(svg_filename)

    # delete the associated PNG file
    png_filename = svg_filename.replace('.svg', '.png')
    if os.path.isfile(png_filename):
        print(f'PNG image {png_filename} is likely erroneous.')
        os.remove(png_filename)
