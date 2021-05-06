[![Latest release](https://img.shields.io/github/v/release/reproducible-biomedical-modeling/biomodels_qc)](https://github.com/reproducible-biomedical-modeling/biomodels_qc/releases)
[![PyPI](https://img.shields.io/pypi/v/biomodels-qc)](https://pypi.org/project/biomodels-qc/)
[![CI status](https://github.com/reproducible-biomedical-modeling/biomodels_qc/workflows/Continuous%20integration/badge.svg)](https://github.com/reproducible-biomedical-modeling/biomodels_qc/actions?query=workflow%3A%22Continuous+integration%22)
[![Test coverage](https://codecov.io/gh/reproducible-biomedical-modeling/biomodels_qc/branch/dev/graph/badge.svg)](https://codecov.io/gh/reproducible-biomedical-modeling/biomodels_qc)

# BioModels quality control
Command-line application for quality controlling entries in the [BioModels database](https://www.ebi.ac.uk/biomodels/) and converting the primary files for entries in the database into additional formats such as BioPAX, MATLAB/Octave, and XPP.

The application can be installed locally or executed as a Docker image.

This application should be used in conjuction with best practices recommended [here](best-practices.md).

## Local installation

### Requirements
* Python >= 3.7.8+, 3.8.4+, or 3.9.0+
* pip >= 19.3
* [Systems Biology Format Converter](http://sbfc.sourceforge.net/mediawiki/index.php/Main_Page)
    * Java
* [Octave](https://www.gnu.org/software/octave/)
    * [Mac OS installer](https://www.gnu.org/software/octave/download)
    * Ubuntu: `apt-get install octave`
    * [Windows installer](https://www.gnu.org/software/octave/download)
* [Scilab](https://www.scilab.org/)
    * [Mac OS installer](https://www.scilab.org/download/)
    * Ubuntu: `apt-get install scilab`
    * [Windows installer](https://www.scilab.org/download/)
* [SVGLint](https://www.npmjs.com/package/svglint)
    * [Node.js](https://nodejs.org/en/)
        * [Mac OS installer](https://nodejs.org/en/download/)
        * [Ubuntu instructions](https://github.com/nodesource/distributions/blob/master/README.md)
        * [Windows installer](https://nodejs.org/en/download/)
* [XPP](http://www.math.pitt.edu/~bard/xpp/xpp.html)
    * [Mac OS instructions](http://www.math.pitt.edu/~bard/xpp/installonmac.html)
    * Ubuntu: `apt-get install xppaut`
    * [Windows instructions](http://www.math.pitt.edu/~bard/xpp/installonwindows.html)

After installing the packages above, the following must be added to your system path:
* `sbfConverter.sh` (Linux/Mac OS) or `sbfConverter.bat` (Windows)
* `svglint`
* `xppaut`

### Installation
Run the following command to install the package.
```
pip install biomodels-qc
```

## Docker image
Run the following command to pull the Docker image
```
docker pull ghcr.io/reproducible_biomedical_modeling/biomodels_qc
```

## Tutorial

### Convert the files for an entry to additional formats
Run the following command to convert the files for an entry to additional formats such as BioPAX, MATLAB/Octave, and XPP.
```
biomodels-qc convert /path/to/directory-for-entry
```

### Validate an entry
Run the following command to validate an entry of the BioModels database:
```
biomodels-qc validate /path/to/directory-for-entry
```

## Documentation
Documentation for the command-line program is available inline. Run the following command to obtain the help.
```
biomodels-qc --help
```

## API documentation
API documentation is available [here](https://reproducible-biomedical-modeling.github.io/biomodels_qc/).

## License
This package is released under the [MIT license](LICENSE).

## Development team
This package was developed by the [Center for Reproducible Biomedical Modeling](http://reproduciblebiomodels.org).

## Contributing to BioModels-QC
We enthusiastically welcome contributions! Please see the [guide to contributing](CONTRIBUTING.md) and the [developer's code of conduct](CODE_OF_CONDUCT.md).

## Acknowledgements
This work was supported by National Institutes of Health award P41EB023912.

## Questions and comments
Please contact the [Center for Reproducible Biomedical Modeling](mailto:info@reproduciblebiomodels.org) with any questions or comments.
