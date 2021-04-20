# -*- coding: utf-8 -*-
"""
Created on Fri Apr  9 15:02:37 2021

@author: Lucian
"""

import COPASI
import os
import re
import difflib
import libsedml

allfiles = {}
for root, __, files in os.walk(os.getcwd()):
    allfiles[root] = files

sedfiles = {}
sbmlfiles = {}
for direc in allfiles:
    for file in allfiles[direc]:
        ncps = 0
        if ".sedml" in file:
            if direc not in sedfiles:
                sedfiles[direc] = []
            sedfiles[direc].append(file)
        if ".xml" in file:
            if direc not in sbmlfiles:
                sbmlfiles[direc] = []
            sbmlfiles[direc].append(file)

guesses = open("guesses.txt", "w")

def fixSedSBMLTarget(sfilename, sbmllist, direc):
    sed = libsedml.readSedMLFromFile(direc + "/" + sfilename)
    if sed.getNumModels()==0:
        print("Failure to read file (probably):", direc, sfilename)
        assert(False)
    if (sed.getNumModels() > 1):
        print("Not exactly one SBML model:", direc, sfilename)
        model = sed.getModel(0)
        source = model.getSource()
        for n in range(sed.getNumModels()):
            model = sed.getModel(n)
            if source != model.getSource():
                if not sed.getModel(source):
                    print("...and they're different.  Aborting.")
                    return
    #If there are both "_url" and "_urn" models, just use the "_url" one.
    urlmods = []
    for sbmlmod in sbmllist:
        if "_url" in sbmlmod:
            urlmods.append(sbmlmod)
    for urlmod in urlmods:
        urnversion = urlmod.replace("url", "urn")
        if urnversion in sbmllist:
            sbmllist.remove(urnversion)
            
    #Set the model source for all models (but always use the same model for each)
    for n in range(sed.getNumModels()):
        model = sed.getModel(n)
        source = model.getSource()
        if source in sbmllist:
            continue
    
        #If there's only one option, use that.
        if len(sbmllist) == 1:
            model.setSource(sbmllist[0])
            continue
    
        #If the name matches exactly, use that:
        for sbmlfile in sbmllist:
            if sbmlfile == sfilename.replace("cps", "xml"):
                model.setSource(sbmlfile)
                continue
                
        #Otherwise... pick one at random?  Let's go with the first on the list.
        guesses.write(direc + "," + sfilename + "," + sbmllist[0]+ "\n")
        model.setSource(sbmllist[0])
    return libsedml.writeSedMLToFile(sed, direc + "/" + sfilename)
    
for direc in sedfiles:
    for sfilename in sedfiles[direc]:
        fixSedSBMLTarget(sfilename, sbmlfiles[direc], direc)
        
guesses.close()
