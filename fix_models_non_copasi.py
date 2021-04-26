# -*- coding: utf-8 -*-
"""
Created on Fri Apr  9 15:02:37 2021

@author: Lucian
"""

import os
import libsedml

def fixSedSBMLTarget(sfilename, sbmllist, id, guesses):
    sed = libsedml.readSedMLFromFile(sfilename)
    if sed.getNumModels()==0:
        print("Failure to read file (probably):", sfilename)
        assert(False)
    # if (sed.getNumModels() > 1):
    #     print("Multiple models in ", id, os.path.basename(sfilename))
    #     print("Not exactly one SBML model:", sfilename)
    #     model = sed.getModel(0)
    #     source = model.getSource()
    #     for n in range(sed.getNumModels()):
    #         model = sed.getModel(n)
    #         if source != model.getSource():
    #             if not sed.getModel(source):
    #                 print("...and they're different.  Aborting.")
    #                 return
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
        if sed.getModel(source):
            model.setSource("#" + source)
            continue
        if sed.getModel(source.replace("#", "")):
            continue
    
        #If there's only one option, use that.
        if len(sbmllist) == 1:
            model.setSource(os.path.basename(sbmllist[0]))
            continue
    
        #If the name matches exactly, use that:
        for sbmlfile in sbmllist:
            if sbmlfile == sfilename.replace("cps", "xml"):
                model.setSource(os.path.basename(sbmlfile))
                continue
                
        #Otherwise... pick one at random?  Let's go with the first on the list.
        guesses.append((id, sfilename, os.path.basename(sbmllist[0])))
        model.setSource(os.path.basename(sbmllist[0]))
    return libsedml.writeSedMLToFile(sed, sfilename)
    
def run(sedml_filenames, sbml_filenames, id):
    guesses = []
    for sfilename in sedml_filenames:
        fixSedSBMLTarget(sfilename, sbml_filenames, id, guesses)
    return guesses
        
