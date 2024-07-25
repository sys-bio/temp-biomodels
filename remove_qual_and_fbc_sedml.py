import os

# Don't use this list; figure it out on the fly (so we're future-proofed)
#qual_and_fbc_models = ["BIOMD0000000562", "BIOMD0000000592", "BIOMD0000000593", "BIOMD0000001046", "BIOMD0000001061", "BIOMD0000001062", "BIOMD0000001063", "BIOMD0000001064"]

def hasQualOrFBC(sbml_filenames):
    for filename in sbml_filenames:
        f = open(filename, "r", encoding="utf-8")
        for line in f:
            if "qual:" in line:
                return True
            if "fbc:" in line:
                return True
    return False


def run(id, sedml_filenames, sbml_filenames):
    if hasQualOrFBC(sbml_filenames):
        for filename in sedml_filenames:
            os.remove(filename)
