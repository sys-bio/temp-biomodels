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
import kisao

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


def fixKirschner1998(sed):
    # reason: "Does not reproduce published figure"
    sim = sed.getSimulation(0)
    sim.setOutputEndTime(1000)
    alg = sim.getAlgorithm()
    alg.setName("ODE solver")
    alg.setKisaoID(694)
    param = alg.createAlgorithmParameter()
    param.setName("use stiff solver")
    param.setKisaoID(671)
    param.setValue("false")
    
    rt = sed.getTask(1)
    rt.removeRange(0)
    vrange = rt.createVectorRange()
    vrange.setId("range0")
    vrange.setValues([5e-5, .01, .02, .035])
    

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

def remove_parameter_estimation_detritus(sed, c_file):
    if "Parmar2017_Deficient_Rich_tracer" in c_file or "Parmar2017_Adequate_tracer" in c_file:
        #Nothing beyond the simulation works; just ditch all of it.
        while sed.getNumDataGenerators() > 0:
            sed.removeDataGenerator(0)
        while sed.getNumOutputs() > 0:
            sed.removeOutput(0)
        while sed.getNumStyles() > 0:
            sed.removeStyle(0)

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
    # Otherwise, if the name matches partially, use that:
    for sbml_file in sbml_list:
        if sbml_file.replace(".xml", "") in c_file or c_file.replace(".cps", "") in sbml_file:
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

#Remove the '#' that COPASI inserts into the color attribute.
def fix_color_ids_and_nones(sed):
    for s in range(sed.getNumStyles()):
        style = sed.getStyle(s)
        line = style.getLineStyle()
        if line and line.isSetColor():
            color = line.getColor()
            if "#" in color:
                color = color.replace("#", "")
                line.setColor(color)
        marker = style.getMarkerStyle()
        if marker and marker.isSetLineColor():
            color = marker.getLineColor()
            if "#" in color:
                color = color.replace("#", "")
                marker.setLineColor(color)
        if line and not marker:
            marker = style.createMarkerStyle()
            marker.setType("none")
        if marker and not line:
            line = style.createLineStyle()
            line.setType("none")
                
def fix_dataset_labels(sed):
    for o in range(sed.getNumOutputs()):
        output = sed.getOutput(o)
        try:
            for ds in range(output.getNumDataSets()):
                dataset = output.getDataSet(ds)
                if not dataset.isSetLabel():
                    dataset.setLabel(dataset.getId())
        except:
            pass

def fix_uniform_time_course(sed):
    Kisao = kisao.Kisao()
    generic_ode = Kisao.get_term("KISAO_0000694")
    generic_ss = Kisao.get_term("KISAO_0000407")
    for o in range(sed.getNumSimulations()):
        sim = sed.getSimulation(o)
        try:
            if sim.isSetOutputStartTime() and sim.isSetInitialTime():
                init = sim.getInitialTime()
                out = sim.getOutputStartTime()
                if init > out:
                    sim.setOutputStartTime(init)
            #Change the algorithm to the generic 'ODE solver'.
            if sim.isSetAlgorithm():
                alg = sim.getAlgorithm()
                kid = alg.getKisaoID()
                alg_term = Kisao.get_term(kid)
                alts = kisao.utils.get_substitutable_algorithms(alg_term)
                if generic_ode in alts:
                    alg.setKisaoID(694)
                    alg.setName("ODE solver")
                elif generic_ss in alts:
                    alg.setKisaoID(407)
                    alg.setName("Steady state root-finding method")
                for p in range(alg.getNumAlgorithmParameters()):
                    param = alg.getAlgorithmParameter(p)
                    #Change 'absolute tolerance' to 'absolute tolerance adjustment factor', since that's what COPASI actually uses.
                    if param.getKisaoIDasInt() == 211:
                        param.setKisaoID(571)
                        param.setName("Absolute tolerance adjustment factor")
        except:
            pass

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
    sedml = dm.exportSEDMLToString(None, 1, 4)
    # print("Initial COPASI export:\n", sedml)
    sedml = re.sub(r'on 20.*with', 'with', sedml)
    for nac in non_ascii_chars:
        if nac in sedml:
            sedml = sedml.replace(nac, non_ascii_chars[nac])
    guesses = []
    sed = libsedml.readSedMLFromString(sedml)
    remove_parameter_estimation_detritus(sed, c_file)
    fix_kinsol_algorithms(sed)
    fix_sed_sbml_target(sed, sbml, sbml_filenames, c_file, id, guesses)
    fix_color_ids_and_nones(sed)
    fix_dataset_labels(sed)
    fix_uniform_time_course(sed)
    sed_msg = COPASI.CCopasiMessage.getAllMessageText()
    # addPlotDetails(sed, dm)
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
            if "Kirschner_1998.sedml" in copasi_sed:
                fixKirschner1998(sed)
                
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
        #Due to a bug in Copasi, need to clear user functions from previous loads:
        basico.remove_user_defined_functions()
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
