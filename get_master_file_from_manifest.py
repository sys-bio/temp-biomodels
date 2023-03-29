# -*- coding: utf-8 -*-
"""
Created on Wed Mar 22 15:12:43 2023

@author: Lucian
"""

import csv
import requests
import xml.etree.ElementTree as ET
  
def getMaster(xmlfile):
  
    # create element tree object
    tree = ET.parse(xmlfile)
  
    # get root element
    root = tree.getroot()
  
    for child in root.iter():
        attributes = child.attrib
        if 'master' in attributes and attributes['master'] == 'true':
            return attributes['location']
      
    # return news items list
    return None
  
  
# parse xml file
def run(directory):
    return getMaster(directory + '/manifest.xml')
  