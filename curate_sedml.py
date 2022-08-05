# -*- coding: utf-8 -*-
"""
Created on Tue Aug  2 10:07:17 2022

@author: Lucian
"""

import tellurium as te
from biosimulators_utils.combine.io import CombineArchiveWriter
from biosimulators_utils.combine.io import CombineArchiveReader
from biomodels_qc.utils import build_combine_archive
from run_project_on_biosimulations import runProject

import libsedml
import phrasedml
import libsbml

import os
import glob
import sys

#Fill out this information when you pick a new biomodel:
this_biomodel = 882
sedfilename = "munz2000.sedml"
sbmlfilename = "munz2000.xml"

#Everything else should be automatic, but feel free to adjust if need be:
biomdstr = str(this_biomodel).zfill(4)
seddir = "final/BIOMD000000" + biomdstr + "/"
sedfile = seddir + sedfilename
omexfile = "omex_files/BIOMD000000" + biomdstr + ".omex"

#Temp dir to store the files as you're working on them (if seddir isn't appropriate):
outdir = biomdstr + "/"

#Fire things off to Biosimulations:
runProject("BIOMD000000" + biomdstr)


#Using tellurium to run a SED-ML file:
te.sedml.tesedml.executeSEDML(sedfile, workingDir=seddir)

#Using tellurium to run a Combine Archive:
te.sedml.tesedml.executeCombineArchive(omexfile)

#Using tellurium to get a file out of a Combine Archive:
sedml = te.extractFileFromCombineArchive(omexfile, sedfilename)
sbml = te.extractFileFromCombineArchive(omexfile, sbmlfilename)

#Using biosimulators_utils to extract files from a Combine Archive:
combine_reader = CombineArchiveReader()
combine_reader.run(omexfile, outdir)


#Using biosimulators_utils to write a Combine Archive:
combine_writer = CombineArchiveWriter()
sedml_filenames = glob.glob(os.path.join(outdir, '**', '*.sedml'), recursive=True)
sedml_locations = [os.path.relpath(path, outdir) for path in sedml_filenames]
archive = build_combine_archive(outdir, sedml_locations)
combine_writer.run(archive, outdir, biomdstr + ".omex")

#View the SBML model in Antimony.
#Note that this bit of code changes how the model is structured, but will not change the math.  It's just so that it's easier to read.

sbmldoc = libsbml.readSBMLFromString(sbml)
props = libsbml.ConversionProperties()
props.addOption("expandFunctionDefinitions", True)
if sbmldoc.convert(props) != libsbml.LIBSBML_OPERATION_SUCCESS:
    print("[Error] Conversion failed...")
    sys.exit(1)

r = te.loads(libsbml.writeSBMLToString(sbmldoc))
print("Antimony version of SBML model", sbmlfilename, ":\n")
print(r.getAntimony())


#Manipulating the SED-ML

#Option 1:  Use a text editor
#  * Run something like the above to find the SED-ML file as it exists so far.
#  * Find the bit that needs to be changed and just change it.
#  * Then run the sedml through tellurium to see if it worked.

#Option 2:  Use libsedml

#Convert the string to a libsedml document:
sed = libsedml.readSedMLFromString(sedml)

#Example manipulation:  remove the 'Removal' curve
# for o in range(sed.getNumOutputs()):
#     out = sed.getOutput(o)
#     if out.getName() == "Figure 3":
#         removeIndex = -1
#         for c in range(out.getNumCurves()):
#             curve = out.getCurve(c)
#             if curve.getName() == "[Removal]":
#                 removeIndex = c
#         out.removeCurve(removeIndex)

# libsedml.writeSedMLToFile(sed, outdir + 'new_sed.sedml')
# te.sedml.tesedml.executeSEDML(outdir + "new_sed.sedml", workingDir=outdir)


#Option 3:  Use phraSEDML
#  Probably should do this when what you need is very very different from what you have 
#  (i.e. you need steady state or a parameter scan, but have a time course)
#  In this case, we need a version of the model with 'Zombie' set to 0.

new_phrasedml = '''
  // Set model
  no_zombies = model "munz2000.xml" with Zombie = 0
  // Simulation
  sim = simulate uniform(0, 10, 1000)         # sim_id = simulate simulation_type
  no_zombie_sim = run sim on no_zombies       # task_id = run sim_id on model_id
  plot "Figure 2" time vs Susceptible, Zombie
'''

phrasedml.setWorkingDirectory(outdir)
# The following commands only work  with model 882, since the phrasedml refers to that model specifically.
# It's just here for reference if you need it.

# sed2 = phrasedml.convertString(new_phrasedml)
# te.saveToFile(outdir + 'sed2.sedml', sed2)
# te.sedml.tesedml.executeSEDML(outdir + "sed2.sedml", workingDir=outdir)
