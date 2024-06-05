#!/usr/bin/env python3
# master program to fix the entries of BioModels

import create_omex
import os
import csv


FINAL_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'final')
OMEX_DIR = os.path.join(os.path.dirname(__file__), 'omex_files')
BIOMODELS_MASTER = "all_masters.csv"

def create_all_omex():
    """ Create all the omex files.
    """
    git_add_file = open("git_add.bat", "w")
    mastertable = {}
    with open(BIOMODELS_MASTER) as csvfile:
        rev_reader = csv.reader(csvfile)
        for row in rev_reader:
            mastertable[row[0]] = row[1]
    for dirname in os.listdir("final/"):
    
        print("Creating omex file for", dirname)

        ###################################################
        # Build manifest and create OMEX file
        create_omex.process(dirname, os.path.join(FINAL_ENTRIES_DIR, dirname), OMEX_DIR, True, sbml_master = mastertable[dirname])
        git_add_file.write("git add omex_files/" + dirname + ".omex\n")
    git_add_file.close()


if __name__ == "__main__":
    create_all_omex()
