# -*- coding: utf-8 -*-
from glob import glob
import os

def run(dirname: str):
    """
    Remove bad PDF files created by the Systems Biology Format Converter (SBFC)

    Args:
        dirname (:obj:`str`): the directory in which PDF files will be removed
    """
    repo_scripts = glob(os.path.join(dirname, '*/*.py')) + glob(os.path.join(dirname, '*/*.py')) + glob(os.path.join(dirname, '*/*.py'))
    for py_filename in repo_scripts:
        pdf = open(py_filename, 'rb')
        if "We are sorry" in pdf:
            print(f'pdf image {py_filename} is erroneous.')
            os.remove(py_filename)
        print(f'\r{py_filename}')
    
run('final')