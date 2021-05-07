# -*- coding: utf-8 -*-
"""
Created on Fri Apr  9 15:02:37 2021

@author: Lucian Smith
"""

import os
import libsedml


def fix_sed_sbml_target(s_filename, sbml_list, id, guesses):
    sed = libsedml.readSedMLFromFile(s_filename)
    if sed.getNumModels() == 0:
        print("Failure to read file (probably):", s_filename)
        assert(False)
    # if (sed.getNumModels() > 1):
    #     print("Multiple models in ", id, os.path.basename(s_filename))
    #     print("Not exactly one SBML model:", s_filename)
    #     model = sed.getModel(0)
    #     source = model.getSource()
    #     for n in range(sed.getNumModels()):
    #         model = sed.getModel(n)
    #         if source != model.getSource():
    #             if not sed.getModel(source):
    #                 print("...and they're different.  Aborting.")
    #                 return
    # If there are both "_url" and "_urn" models, just use the "_url" one.
    url_mods = []
    for sbml_mod in sbml_list:
        if "_url" in sbml_mod:
            url_mods.append(sbml_mod)
    for url_mod in url_mods:
        urn_version = url_mod.replace("url", "urn")
        if urn_version in sbml_list:
            sbml_list.remove(urn_version)

    # Set the model source for all models (but always use the same model for each)
    for n in range(sed.getNumModels()):
        model = sed.getModel(n)
        source = model.getSource()
        if source in sbml_list:
            continue
        if sed.getModel(source):
            model.setSource("#" + source)
            continue
        if sed.getModel(source.replace("#", "")):
            continue

        # If there's only one option, use that.
        if len(sbml_list) == 1:
            model.setSource(sbml_list[0])
            continue

        # If the name matches exactly, use that:
        for sbml_file in sbml_list:
            if sbml_file == os.path.basename(s_filename).replace("cps", "xml"):
                model.setSource(sbml_file)
                continue

        # Otherwise... pick one at random?  Let's go with the first on the list.
        guesses.append((id, s_filename, sbml_list[0]))
        model.setSource(sbml_list[0])
    return libsedml.writeSedMLToFile(sed, s_filename)


def run(sedml_filenames, sbml_filenames, id):
    guesses = []
    sbml_basenames = []
    for sbml_file in sbml_filenames:
        sbml_basenames.append(os.path.basename(sbml_file))

    for s_filename in sedml_filenames:
        fix_sed_sbml_target(s_filename, sbml_basenames, id, guesses)
    return guesses
