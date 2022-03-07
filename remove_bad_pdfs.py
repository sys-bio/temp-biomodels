# -*- coding: utf-8 -*-
from glob import glob
import os

def run(dirname: str):
    """
    Remove bad PDF files created by the Systems Biology Format Converter (SBFC)

    Args:
        dirname (:obj:`str`): the directory in which PDF files will be removed
    """
    for pdf_filename in glob(os.path.join(dirname, '*/*.pdf')):
        pdf = open(pdf_filename, 'rb')
        if "We are sorry" in pdf:
            print(f'pdf image {pdf_filename} is erroneous.')
            os.remove(pdf_filename)
        print(f'\r{pdf_filename}')
    
run('final')