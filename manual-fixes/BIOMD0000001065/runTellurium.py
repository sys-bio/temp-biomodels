#!/usr/bin/python3
#
# use Tellurium to run an SBML file
# this imports the SBML file then runs a time course
# Tellurium must be installed, which can be done through "pip3 install tellurium"

import sys
import csv
import tellurium as te

# the SBML file; if a different file is needed it should be passed on the command line
ifile = "vonDassow2000_1x4.timecourse1.xml"
# check if arguments was passed with a filename
n = len(sys.argv)

# read a different SBML file if passed from command line
if(n > 1):
    ifile = sys.argv[1]

# SED-ML v. 1.4 does not work with current Tellurium
#iomex = te.convertCombineArchive(ifile)
#te.executeInlineOmex(iomex)

# we use SBML instead
r = te.loadSBMLModel(ifile)
# set integrator tolerances
r.integrator.absolute_tolerance = 1e-12
r.integrator.relative_tolerance = 1e-6
# this does not require the stiff solver...
r.integrator.stiff = False

# set species for the output
r.timeCourseSelections = ["time", "en_0_0","EN_0_0","ci_0_0","CI_0_0","CN_0_0","hh_0_0","HH1_0_0","HH2_0_0","HH3_0_0","HH4_0_0","HH5_0_0","HH6_0_0","ptc_0_0","PTC1_0_0","PTC2_0_0","PTC3_0_0","PTC4_0_0","PTC5_0_0","PTC6_0_0","wg_0_0","IWG_0_0","EWG1_0_0","EWG2_0_0","EWG3_0_0","EWG4_0_0","EWG5_0_0","EWG6_0_0","PH1_0_0","PH2_0_0","PH3_0_0","PH4_0_0","PH5_0_0","PH6_0_0","en_0_1","EN_0_1","ci_0_1","CI_0_1","CN_0_1","hh_0_1","HH1_0_1","HH2_0_1","HH3_0_1","HH4_0_1","HH5_0_1","HH6_0_1","ptc_0_1","PTC1_0_1","PTC2_0_1","PTC3_0_1","PTC4_0_1","PTC5_0_1","PTC6_0_1","wg_0_1","IWG_0_1","EWG1_0_1","EWG2_0_1","EWG3_0_1","EWG4_0_1","EWG5_0_1","EWG6_0_1","PH1_0_1","PH2_0_1","PH3_0_1","PH4_0_1","PH5_0_1","PH6_0_1","en_0_2","EN_0_2","ci_0_2","CI_0_2","CN_0_2","hh_0_2","HH1_0_2","HH2_0_2","HH3_0_2","HH4_0_2","HH5_0_2","HH6_0_2","ptc_0_2","PTC1_0_2","PTC2_0_2","PTC3_0_2","PTC4_0_2","PTC5_0_2","PTC6_0_2","wg_0_2","IWG_0_2","EWG1_0_2","EWG2_0_2","EWG3_0_2","EWG4_0_2","EWG5_0_2","EWG6_0_2","PH1_0_2","PH2_0_2","PH3_0_2","PH4_0_2","PH5_0_2","PH6_0_2","en_0_3","EN_0_3","ci_0_3","CI_0_3","CN_0_3","hh_0_3","HH1_0_3","HH2_0_3","HH3_0_3","HH4_0_3","HH5_0_3","HH6_0_3","ptc_0_3","PTC1_0_3","PTC2_0_3","PTC3_0_3","PTC4_0_3","PTC5_0_3","PTC6_0_3","wg_0_3","IWG_0_3","EWG1_0_3","EWG2_0_3","EWG3_0_3","EWG4_0_3","EWG5_0_3","EWG6_0_3","PH1_0_3","PH2_0_3","PH3_0_3","PH4_0_3","PH5_0_3","PH6_0_3","EWG_T_0_0","PTC_T_0_0","PH_T_0_0","EWG_T_0_1","PTC_T_0_1","PH_T_0_1","EWG_T_0_2","PTC_T_0_2","PH_T_0_2","EWG_T_0_3","PTC_T_0_3","PH_T_0_3"]

# run simulation
result = r.simulate(0, 1100, 221)

# write results in tsv file
outf = open('timecourse1.tellurium.tsv', 'w')
writer = csv.writer(outf, delimiter='\t')
writer.writerow(result.colnames)
writer.writerows(result)
outf.close()
