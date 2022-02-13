from xml.etree import ElementTree as et
from glob import glob
import os, re


def remove_bad_images(
        temp_entry_dir: str = 'final' # The path were the BioModels are stored
        ):
    def delete_images(svg_image):
            print(f'This SVG image {svg_image} is erroneous.')
            os.remove(svg_image)
        
            # examine the presence of an associated PNG image
            png_image = re.sub('.svg','.png',svg_image)
            if os.path.exists(png_image):
                print(f'This PNG image {png_image} is likely corrupted.')
                os.remove(png_image)
    
    # examine all SVG images in BioModels
    for svg_image in glob(os.path.join(temp_entry_dir,'*/*.svg')):
        try:
            tree = et.parse(svg_image)
            root = tree.getroot()   
            xml_string = et.tostring(root, encoding='unicode')
            if re.search("no graph can be automatically generated", xml_string):
                delete_images(svg_image)
        except:
            delete_images(svg_image)
    