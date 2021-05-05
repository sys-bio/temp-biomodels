Summary of the changes to the content of BioModels

* Filenames
    * Corrected typos in file names
    * Removed non-ASCII characters in file names
    * Removed consecutive periods (`.`) in file names
    * Changed extensions to lower case

* SBML files
    * Upgraded several models to L2V4
    * Corrected unknown MIRIAM references in 33 files
    * Corrected unknown COPASI annotations in 2 files
    * Fixed incorrect use of SBML L3 layout in L2 model files
    * Corrected list of reactions in layout for BIOMD0000000872
    * Fixed unit definitions
        * BIOMD0000000439
        * BIOMD0000000479
        * BIOMD0000000965 (removed Avogadro which isn't defined in SBML L2)
    * Fixed SBO terms in BIOMD0000000631
    * Corrected `ROS` to boundary in BIOMD0000000344
    * Fixed invalid XML in BIOMD0000000344
    * Removed redundant file in `BIOMD0000000883/MAP3K8_Thyroid_Spheres_V3.4.cps.xml`

* SED-ML files
    * Changed file extension to consistently be `.sedml`
    * Re-exported most SED-ML files created with COPASI due to multiple issues with these files
    * Fixed broken references to models in SED-ML files not created with COPASI
    * Added missing namespaces for models
    * Removed redundant definitions of the SED-ML namespace at invalid locations
    * Corrected time courses with unusual step numbers and sizes in 36 files
    * Corrected ids of models
        * BIOMD0000000816/OV5.sedml
        * BIOMD0000000816/OV25.sedml
    * Removed invalid, unused models
        * BIOMD0000000816/OV5.sedml
        * BIOMD0000000816/OV25.sedml
        * BIOMD0000000817/OV5.sedml
        * BIOMD0000000817/OV25.sedml
    * Removed empty containers
        * Repeated tasks with no subtasks
        * Reports with no data sets
        * 2D plots with no curves
        * 3D plots with no surfaces
    * Decreased excessive numbers of steps of time courses
    * Fixed syntactically incorrect XPaths
    * Fixed SED-ML datasets with misssing labels
    * Fixed variables of data generators with no symbols or targets

* OMEX files
    * Replaced file with its content: BIOMD0000000585/Rateitschak2012.omex

* CPS files
    * Corrected time courses with unusual step numbers and sizes in 36 files
    * Corrected MODEL1305060000_edited

* Other files
    * Re-generated derived files
        * SBML URN
        * Matlab
        * Octave
        * XPP
    * Replaced `*.m` Octave files with `*-matlab.m` and `*-octave.m` files
    * Removed invalid derived URN files
    * Removed invalid derived XPP files
    * Remove 1 invalid derived VCML file
    * Removed 22 corrupted PNG files
    * Removed MATLAB/Octave and XPP files for non-kinetic models
