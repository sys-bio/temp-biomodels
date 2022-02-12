from xml.etree import ElementTree as et
from warnings import warn
from glob import glob
import os, re


def remove_bad_images(
        root_path: str = 'original' # The path were the BioModels are stored
        ):
    for svg_image in glob(os.path.join(root_path,'*/*.svg')):
        # examine the SVG images
        try:
            tree = et.parse(svg_image)
            root = tree.getroot()   
            xml_string = et.tostring(root, encoding='unicode')
        except:
            warn(f'The {svg_image} SVG image has unexpected content.')
            continue
        
        if re.search("no graph can be automatically generated", xml_string):
            print(f'This SVG image {svg_image} has an erroneous SVG file')
            os.remove(svg_image)
        
            # examine the presence of an associated PNG image
            png_image = re.sub('.svg','.png',svg_image)
            if os.path.exists(png_image):
                print(f'This PNG image {png_image} is likely corrupted.')
                os.remove(png_image)