# Best practices for curating high-quality, reusable modeling projects

## Recommended workflow for validating entries of BioModels

After creating or modifying an entry of BioModels, we recommend executing the following workflow.

1. Re-convert the primary (SBML) model files to the supported alternative formats. This is necessary to ensure these secondary model files are kept in sync with the primary files. The can be achieved by running the following command:
    ```
    biomodels-qc convert /path/to/dir/for/biomodels-entry/
    ```

2. Validate the entry, including the executability of the SED-ML documents in the entry. The can be achieved by running the following command:
    ```
    biomodels-qc validate /path/to/dir/for/biomodels-entry/
    ```

    This will run checks on the following types of files:
    * Alternative model formats: COPASI, MATLAB/Octave, Scilab, VCML, XPP
    * BioPAX files
    * Images: gif, jpeg, png
    * IPython/Jupyter notebooks
    * MATLAB data files
    * PDF files
    * Python files
    * SBML files
    * SED-ML files
    * XPP files
    * Zip archives

3. Review the outputs of the execution of the SED-ML documents in the entry.

    * Check that the expected outputs were created.
    * Check that the outputs were produced as expected.
    * Check that no additional unexpected outputs were produced.


## Best practices for using COPASI

When using COPASI for curation, we recommended utilizing the features of COPASI described below.

### Check the "Executable" task checkbox to avoid specifying unintended tasks

By default, COPASI exports all tasks (that are supported by SED-ML) to SED-ML. In particular, when parameter scan tasks are specified in COPASI, this can result in the export of unintended additional time course tasks. Toward avoiding unintended additional time course tasks, the "Executable" checkbox should be checked for each task that is intended to be exported to SED-ML.

### Uncheck the "Applies to Tasks: All" plot checkbox to avoid specifying unintended plots

By default, COPASI applies each plot to each task. As a result, when COPASI exports simulations to SED-ML, COPASI creates SED-ML plots for each combination of each plot and task that the plot is applied to.

However, in many cases, different tasks need to be visualized with different plots. To ensure that COPASI generates SED-ML files that only contain the intended plots, the "Applies to Tasks: All" checkbox should generally be unchecked. After unchecking this box, use the adjacent input to select the specific task(s) that each plot should be applied to.
