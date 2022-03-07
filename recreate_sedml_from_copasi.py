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
import basico

# These COPASI files are invalid (the later two were fixed by hand in manual-fixes).
bad_copasi_filenames = set(["MODEL1305060000_edited.cps"])  # "Aubert2002.cps", "khajanchi2017.cps"]

# These COPASI files will be ignored, and the present SED-ML used instead.
copasi_with_worse_sedml = set(["Tsai2014.cps", "Panteleev2010_full_model.cps", "Wang2016_2.cps"])

# Just for the record:  All COPASI files are treated as 'better' than the existing SED-ML,
# but for these files in particular, the SED-ML was noticably different.
copasi_with_better_sedml = ["MODEL1511290000.cps", "Theinmozhi_2018.cps", "Bravo2012.cps",
                            "Ganguli2018-immuno regulatory mechanisms in tumor microenvironment.cps",
                            "Dudziuk2019.cps", "Coulibaly2019.cps", "Sun2018.cps", "Smith2011_V1.cps",
                            "Lee2017_Paracetamol_Metabolism.cps", "OVDC.cps", "Smith1980_HypothalamicRegulation.cps",
                            "DiCamillo2016.cps", "Verma2016.cps", "Rao2014.cps", "Radosavljevic2009.cps", "Berg2017.cps",
                            "Proctor2017_model4.cps", "Simon2019.cps", "Simon2019_model3.cps", "Simon2019_Figure3b.cps",
                            "verma2017.cps", "Rodenfels2019_V1.cps", "Giantsos-Adams2013_Figure11.cps", "Proctoe2017_model1.cps", ]

# Also for historical purposes:  these files all had the correct 'source' set for the SED-ML files.
sedml_with_correct_names = ["BIOMD0000000539.cps", "MODEL1603240000.cps", "ARPP-16_Layer1_mutualInhibitions.cps",
                            "ARPP-16_Layer1and2_mutualInhibitions_PKAinhibitsMAST3.cps",
                            "ARPP-16_Layer1and2and3_mutualInhibitions_PKAinhibitsMAST3_dominantNegative.cps",
                            "Barr2016.cps", "Malinzi2018 - tumour-immune interaction model.cps",
                            "Perez-Garcia19 Computational design of improved standardized chemotherapy protocols for grade 2 oligodendrogliomas.cps",
                            "Greene2019 - Differentiate Spontaneous and Induced Evolution to Drug Resistance During Cancer Treatment.cps",
                            "Jung2019.cps", "Smith2011_V1.cps", "Linke2017_figure1b.cps"]
# Note: Rodenfels2019_V1.cps might be a bugfix on COPASI's part:
# the difference is that the labels in the report are better.

non_ascii_chars = {"López": "Lopez",
                   }

def fixChitnes2012(sed):
    # reason: "Corrected figure names and y-axis units"
    for o in range(sed.getNumOutputs()):
        output = sed.getOutput(o)
        if output.getId() == "plot_1_task1":
            output.setName("Figure 3a")
            output.getCurve(0).setLogY(True)
            output.getCurve(1).setLogY(True)
            output.getCurve(2).setLogY(True)
        elif output.getId() == "plot_2_task1":
            output.setName("Figure 3b")
            output.getCurve(0).setLogY(True)
            output.getCurve(1).setLogY(True)

def fixChitnes2008(sed):
    # reason: "Does not reproduce published figure"
    sed.removeOutput("plot_5_task1")
    sed.removeOutput("plot_6_task1")


def get_orig(sed_list, copasi_name, new_sedml, id, guesses):
    for sed_file in sed_list:
        if sed_file == copasi_name.replace("cps", "sedml"):
            return sed_file
    to_dels = []
    for sed_file in sed_list:
        # Remove any sedml files that have *different* COPASI files that are probably their origin
        sed_check = sed_file.replace("sedml", "cps")
        if os.path.exists(sed_check):
            to_dels.append(sed_file)
    for to_del in to_dels:
        sed_list.remove(to_del)
    if len(sed_list) == 0:
        return copasi_name.replace("cps", "sedml")
    if len(sed_list) == 1:
        return sed_list[0]
    min_diff = len(new_sedml)
    ret_file = sed_list[0]
    for sed_file in sed_list:
        biomd_sed = sed_file
        f1_text = open(biomd_sed).readlines()
        # Sum the lines of difference to find the least different.
        diff_total = 0
        for line in difflib.unified_diff(f1_text, new_sedml, fromfile=sed_file, tofile=copasi_name):
            diff_total += 1
        if diff_total < min_diff:
            min_diff = diff_total
            ret_file = sed_file
    # print("The sedml file most similar to the output of " + copasi_name + ": " + ret_file + "\n")
    guesses.append((id, os.path.basename(copasi_name), os.path.basename(ret_file)))
    return ret_file

def fix_kinsol_algorithms(sed):
    for s in range(sed.getNumSimulations()):
        sim = sed.getSimulation(s)
        alg = sim.getAlgorithm()
        if alg.getKisaoIDasInt() == 282:
            #No model in biomodels has any algebraic rules, and can thus use 'normal' solutions.  560 is what Copasi uses.
            alg.setKisaoID(407)



def fix_sed_sbml_target(sed, sbml, sbml_list, c_file, id, guesses):
    if (sed.getNumModels() != 1):
        print("Not exactly one SBML model: probable failure to read file.")
        assert(False)
    model = sed.getModel(0)
    source = model.getSource()
    if source in sbml_list:
        return libsedml.writeSedMLToString(sed)

    # If there are both "_url" and "_urn" models, just use the "_url" one.
    url_mods = []
    for sbml_mod in sbml_list:
        if "_url" in sbml_mod:
            url_mods.append(sbml_mod)
    for url_mod in url_mods:
        urn_version = url_mod.replace("url", "urn")
        if urn_version in sbml_list:
            sbml_list.remove(urn_version)

    # If there's only one option, use that.
    if len(sbml_list) == 1:
        model.setSource(os.path.basename(sbml_list[0]))
        return libsedml.writeSedMLToString(sed)

    # If the name matches exactly, use that:
    for sbml_file in sbml_list:
        if sbml_file == c_file.replace(".cps", ".xml"):
            model.setSource(os.path.basename(sbml_file))
            return libsedml.writeSedMLToString(sed)
        if sbml_file == c_file.replace(".cps", ".xml").replace("+", "_"):
            model.setSource(os.path.basename(sbml_file))
            return libsedml.writeSedMLToString(sed)

    # Otherwise, we have to see which one matches the saved SBML file the most closely
    min_diff = len(sbml)
    ret_file = sbml_list[0]
    for sbml_file in sbml_list:
        biomd_sbml = sbml_file
        # Sum the lines of difference to find the least different.
        diff_total = 0
        for line in difflib.unified_diff(sbml, biomd_sbml):
            diff_total += 1
        if diff_total < min_diff:
            min_diff = diff_total
            ret_file = sbml_file
    # print("The SBML file most similar to the output of " + c_file + ": " + sbml_file)
    guesses.append((id, os.path.basename(c_file), os.path.basename(sbml_file)))
    model.setSource(os.path.basename(ret_file))
    return libsedml.writeSedMLToString(sed)

def createStyleFrom(sed, plot, p, prevstyles, usedstyles):
    plotname = plot['name']
    for curve in plot['curves']:
        curvename = curve['name']
        linetype = curve['line_type']
        linethickness = curve['line_width']
        linesubtype = curve['line_subtype']
        symboltype = curve['symbol']
        color = curve['color']
        styleid = "copasi_style" + str(len(prevstyles)+1)
        if (linetype, linethickness, linesubtype, symboltype, color) in prevstyles:
            styleid = prevstyles[(linetype, linethickness, linesubtype, symboltype, color)]
        else:
            prevstyles[(linetype, linethickness, linesubtype, symboltype, color)] = styleid
            style = sed.createStyle()
            style.setId(styleid)
            style.setName("Line/marker style " + str(len(prevstyles)) + " from COPASI.")

            line = style.createLineStyle()
            if linetype == "points" or linetype == "symbols":
                line.setType(libsedml.SEDML_LINETYPE_NONE)
            else:
                if "#" in color:
                    line.setColor(color.replace("#", ""))

                line.setThickness(linethickness)

                if linesubtype == "solid":
                    line.setType(libsedml.SEDML_LINETYPE_SOLID)
                elif linesubtype == "dotted":
                    line.setType(libsedml.SEDML_LINETYPE_DOT)
                elif linesubtype == "dashed":
                    line.setType(libsedml.SEDML_LINETYPE_DASH)
                elif linesubtype == "dot_dash":
                    line.setType(libsedml.SEDML_LINETYPE_DASHDOT)
                elif linesubtype == "dot_dot_dash":
                    line.setType(libsedml.SEDML_LINETYPE_DASHDOTDOT)
                else:
                    raise NotImplementedError("Unknown COPASI line type " + str(linesubtype))

            # symbols
            symbol = style.createMarkerStyle()
            if linetype == "lines":
                symbol.setType(libsedml.SEDML_MARKERTYPE_NONE)
            else:
                if "#" in color:
                    symbol.setLineColor(color.replace('#', ''))

                if linetype == "points" or symboltype == "circle":
                    symbol.setType(libsedml.SEDML_MARKERTYPE_CIRCLE)
                else:
                    symbol.setType(libsedml.SEDML_MARKERTYPE_XCROSS)

                if linetype == "points":
                    symbol.setSize(1)
                elif symboltype == "circle":
                    symbol.setSize(3)
                elif symboltype == "small_cross":
                    symbol.setSize(3)
                elif symboltype == "large_cross":
                    symbol.setSize(6)

        for o in range(sed.getNumOutputs()):
            output = sed.getOutput(o)
            try:
                for c in range(output.getNumCurves()):
                    curve = output.getCurve(c)
                    if curve.getName() in curvename or (output.getName() == plotname and not curve.isSetStyle()):
                        curve.setStyle(styleid)
                        usedstyles.add(styleid)
            except:
                pass


def addPlotDetails(sed, dm):
    if dm.getNumPlotSpecifications() == 0:
        return
    basico.set_current_model(dm)
    pdl = dm.getPlotDefinitionList()
    prevstyles = {}
    usedstyles = set()
    for p in range(pdl.size()):
        plot = basico.get_plot_dict(p)
        createStyleFrom(sed, plot, p, prevstyles, usedstyles)
    for style in prevstyles:
        if prevstyles[style] not in usedstyles:
            sed.removeStyle(prevstyles[style])

def regen_sedml(c_file, id, sbml_filenames, sedml_filenames):
    dm = COPASI.CRootContainer.addDatamodel()
    # copasi_sed = direc + "/test_" + c_file
    copasi_sed = c_file
    copasi_sed = copasi_sed.replace(".cps", ".sedml")
    # print(copasi_sed)
    # now load a copasi file / import sbml whatever
    result = dm.loadModel(c_file)
    msg = COPASI.CCopasiMessage.getAllMessageText()
    # if msg:
    # print("Loading", c_file, ": ", msg)
    if (not result):
        print("Failed to load model", id, c_file)
        print(msg)
        assert(False)
    # Must export SBML first so COPASI knows how to make SED-ML
    sbml = dm.exportSBMLToString(None, 3, 1)
    sbml_msg = COPASI.CCopasiMessage.getAllMessageText()
    # Export SEDML.
    sedml = dm.exportSEDMLToString(None, 1, 2)
    # print("Initial COPASI export:\n", sedml)
    sedml = re.sub(r'on 20.*with', 'with', sedml)
    for nac in non_ascii_chars:
        if nac in sedml:
            sedml = sedml.replace(nac, non_ascii_chars[nac])
    guesses = []
    sed = libsedml.readSedMLFromString(sedml)
    sed.setVersion(4)
    fix_kinsol_algorithms(sed)
    # print("After converting to l1v4:\n", libsedml.writeSedMLToString(sed))
    fix_sed_sbml_target(sed, sbml, sbml_filenames, c_file, id, guesses)
    sed_msg = COPASI.CCopasiMessage.getAllMessageText()
    addPlotDetails(sed, dm)
    if "No plot/report definition" not in sed_msg:
        if len(sedml_filenames) > 0:
            orig_sed = get_orig(sedml_filenames, c_file, sedml, id, guesses)
            # print("orig sed:", orig_sed)
            if orig_sed in sedml_filenames:
                sedml_filenames.remove(orig_sed)
            copasi_sed = orig_sed
            if "Chitnis2012_model_1.sedml" in copasi_sed:
                #Couldn't fix this in yml because of indenting issues.
                fixChitnes2012(sed)
            if "Chitnis2008.sedml" in copasi_sed:
                #Couldn't fix this in yml because of indenting issues.
                fixChitnes2008(sed)
        # sedml = libsedml.writeSedMLToString(sed)
        # if "numberOfSteps" in sedml:
        #     print(copasi_sed, "has 'numberOfSteps'")
        # elif "numberOfPoints" in sedml:
        #     print(copase_sed, "has 'numberOfPoints'")
        # print(sedml)
        libsedml.writeSedMLToFile(sed, copasi_sed)
    return (sbml_msg, sed_msg, guesses)


def run(sedml_filenames, copasi_filenames, sbml_filenames, id):
    sbml_msgs = []
    sed_msgs = []
    guesses = []
    for copasi_filename in copasi_filenames:
        # print(copasi_filename)
        copasi_basename = os.path.basename(copasi_filename)
        if copasi_basename in bad_copasi_filenames:
            continue
        if copasi_basename in copasi_with_worse_sedml:
            continue
        # print("Working on", copasi_filename)
        (sbml_msg, sed_msg, guesses_1) = regen_sedml(copasi_filename, id, sbml_filenames, sedml_filenames)
        sbml_msgs.append(sbml_msg)
        sed_msgs.append(sed_msg)
        guesses.extend(guesses_1)
    return (sbml_msgs, sed_msgs, guesses)
