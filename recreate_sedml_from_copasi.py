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

#These Copasi files are all invalid.
bad_copasifiles = ["MODEL1305060000_edited.cps", "Aubert2002.cps", "khajanchi2017.cps"]

#These Copasi files will be ignored, and the present SED-ML used instead.
copasi_with_worse_sedml = ["Tsai2014.cps", "Panteleev2010_full_model.cps", "Wang2016_2.cps",]

#Just for the record:  All Copasi files are treated as 'better' than the existing SED-ML, but for these files in particular, the SED-ML was noticably different.
copasi_with_better_sedml = ["MODEL1511290000.cps", "Theinmozhi_2018.cps", "Bravo2012.cps", "Ganguli2018-immuno regulatory mechanisms in tumor microenvironment.cps", "Dudziuk2019.cps", "Coulibaly2019.cps", "Sun2018.cps", "Smith2011_V1.cps", "Lee2017_Paracetamol_Metabolism.cps", "OVDC.cps", "Smith1980_HypothalamicRegulation.cps", "DiCamillo2016.cps", "Verma2016.cps", "Rao2014.cps", "Radosavljevic2009.cps", "Berg2017.cps", "Proctor2017_model4.cps", "Simon2019.cps", "Simon2019_model3.cps", "Simon2019_Figure3b.cps", "verma2017.cps", "Rodenfels2019_V1.cps", "Giantsos-Adams2013_Figure11.cps", "Proctoe2017_model1.cps", ]

#Also for historical purposes:  these files all had the correct 'source' set for the SED-ML files.
sedml_with_correct_names = ["BIOMD0000000539.cps", "MODEL1603240000.cps", "ARPP-16_Layer1_mutualInhibitions.cps", "ARPP-16_Layer1and2_mutualInhibitions_PKAinhibitsMAST3.cps", "ARPP-16_Layer1and2and3_mutualInhibitions_PKAinhibitsMAST3_dominantNegative.cps", "Barr2016.cps", "Malinzi2018 - tumour-immune interaction model.cps", "Perez-Garcia19 Computational design of improved standardized chemotherapy protocols for grade 2 oligodendrogliomas.cps", "Greene2019 - Differentiate Spontaneous and Induced Evolution to Drug Resistance During Cancer Treatment.cps", "Jung2019.cps", "Smith2011_V1.cps", "Linke2017_figure1b.cps"]
#Note: Rodenfels2019_V1.cps might be a bugfix on Copasi's part:  the difference is that the labels in the report are better.

nonascii_chars ={"López": "Lopez",
                 }
    
def getorig(sedlist, copasiname, newsedml, id, guesses):
    for sedfile in sedlist:
        if sedfile == copasiname.replace("cps", "sedml"):
            return sedfile
    todels = []
    for sedfile in sedlist:
        #Remove any sedml files that have *different* copasi files that are probably their origin
        sedcheck = sedfile.replace("sedml", "cps")
        if os.path.exists(sedcheck):
            todels.append(sedfile)
    for todel in todels:
        sedlist.remove(todel)
    if len(sedlist) == 0:
        return copasiname.replace("cps", "sedml")
    if len(sedlist)==1:
        return sedlist[0]
    mindiff = len(newsedml)
    retfile = sedlist[0]
    for sedfile in sedlist:
        biomdsed = sedfile
        f1_text = open(biomdsed).readlines()
        # Sum the lines of difference to find the least different.
        difftotal = 0
        for line in difflib.unified_diff(f1_text, newsedml, fromfile=sedfile, tofile=copasiname):
            difftotal += 1
        if difftotal < mindiff:
            mindiff = difftotal
            retfile = sedfile
    # print("The sedml file most similar to the output of " + copasiname + ": " + retfile + "\n")
    guesses.append((id, os.path.basename(copasiname), os.path.basename(retfile)))
    return retfile


def fixSedSBMLTarget(sedml, sbml, sbmllist, cfile, id, guesses):
    sed = libsedml.readSedMLFromString(sedml)
    if (sed.getNumModels() != 1):
        print("Not exactly one SBML model: probable failure to read file.")
        assert(False)
    model = sed.getModel(0)
    source = model.getSource()
    if source in sbmllist:
        return libsedml.writeSedMLToString(sed)

    #If there are both "_url" and "_urn" models, just use the "_url" one.
    urlmods = []
    for sbmlmod in sbmllist:
        if "_url" in sbmlmod:
            urlmods.append(sbmlmod)
    for urlmod in urlmods:
        urnversion = urlmod.replace("url", "urn")
        if urnversion in sbmllist:
            sbmllist.remove(urnversion)

    #If there's only one option, use that.
    if len(sbmllist) == 1:
        model.setSource(os.path.basename(sbmllist[0]))
        return libsedml.writeSedMLToString(sed)

    #If the name matches exactly, use that:
    for sbmlfile in sbmllist:
        if sbmlfile == cfile.replace("cps", "xml"):
            model.setSource(os.path.basename(sbmlfile))
            return libsedml.writeSedMLToString(sed)
            
    #Otherwise, we have to see which one matches the saved SBML file the most closely
    mindiff = len(sbml)
    retfile = sbmllist[0]
    for sbmlfile in sbmllist:
        biomdsbml = sbmlfile
        # Sum the lines of difference to find the least different.
        difftotal = 0
        for line in difflib.unified_diff(sbml, biomdsbml):
            difftotal += 1
        if difftotal < mindiff:
            mindiff = difftotal
            retfile = sbmlfile
    # print("The SBML file most similar to the output of " + cfile + ": " + sbmlfile)
    guesses.append((id, os.path.basename(cfile), os.path.basename(sbmlfile)))
    model.setSource(os.path.basename(retfile))
    return libsedml.writeSedMLToString(sed)
    
    
        
def regen_sedml(cfile, id, sbml_filenames, sedml_filenames):
    dm = COPASI.CRootContainer.addDatamodel()
    # copasised = direc + "/test_" + cfile
    copasised = cfile
    copasised = copasised.replace("cps", "sedml")
    # print(copasised)
    # now load a copasi file / import sbml whatever
    result = dm.loadModel(cfile)
    msg = COPASI.CCopasiMessage.getAllMessageText()
    # if msg:
    # print("Loading", cfile, ": ", msg)
    if (not result):
        print("Failed to load model", id, cfile)
        print(msg)
        assert(False)
    # Must export SBML first so Copasi knows how to make SEDML
    sbml = dm.exportSBMLToString(None, 3, 1)
    sbml_msg = COPASI.CCopasiMessage.getAllMessageText()
    # Export SEDML.
    sedml = dm.exportSEDMLToString(None, 1, 2)
    sedml = re.sub(r'on 20.*with', 'with', sedml)
    for nac in nonascii_chars:
        if nac in sedml:
            sedml = sedml.replace(nac, nonascii_chars[nac])
    guesses = []
    sedml = fixSedSBMLTarget(sedml, sbml, sbml_filenames, cfile, id, guesses)
    sed_msg = COPASI.CCopasiMessage.getAllMessageText()
    cbase = os.path.basename(cfile)
    if "No plot/report definition" not in sed_msg:
        if len(sedml_filenames) > 0:
            origsed = getorig(sedml_filenames, cfile, sedml, id, guesses)
            # print("orig sed:", origsed)
            if origsed in sedml_filenames:
                sedml_filenames.remove(origsed)
            copasised = origsed
        csedout = open(copasised, "w")
        csedout.write(sedml)
        csedout.close()
    return (sbml_msg, sed_msg, guesses)

def run(sedml_filenames, copasi_filenames, sbml_filenames, id):
    sbml_msgs = []
    sed_msgs = []
    guesses = []
    for cfile in copasi_filenames:
        # print(cfile)
        cbase = os.path.basename(cfile)
        if cbase in bad_copasifiles:
            continue
        if cbase in copasi_with_worse_sedml:
            continue
        # print("Working on", cfile)
        (sbml_msg, sed_msg, guesses1) = regen_sedml(cfile, id, sbml_filenames, sedml_filenames)
        sbml_msgs.append(sbml_msg)
        sed_msgs.append(sed_msg)
        guesses.extend(guesses1)
    return (sbml_msgs, sed_msgs, guesses)
