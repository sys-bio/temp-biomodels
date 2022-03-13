# -*- coding: utf-8 -*-
"""
Created on Mon Mar  7 00:37:38 2022

@author: Andrew Freiburger
"""
from glob import glob
import os, re

file_types = set()
for file in glob(os.path.join('final', '*/*')):
    extension = re.sub('(.+\.)','',file)
    file_types.add(extension)
    
print(file_types)

for file in glob(os.path.join('final', '*/*.ipynb'), recursive = True):
    print(file)