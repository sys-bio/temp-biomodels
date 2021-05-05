Description of changes that went into the manual-fixes directory:

* Many SBML files had accidentally exposed the `layout` annotation as if it was normal layout, which it can only be in SBML L3.  The incorrect namespaces for `layout` were removed, and the `listOfLayouts` moved back inside the annotation. [LPS]
* For BIOMD0000000872, the `_url` and `_urn` versions of the layout annotation had invalid reaction lists, so I replaced them with the reation list from the valid one. [LPS]
* Removed `BIOMD0000000883/MAP3K8_Thyroid_Spheres_V3.4.cps.xml`, since it was just a straight copy of the COPASI file (i.e. same name without `.xml` appended). [LPS]
* Removed `avogadro` units from BIOMD0000000965, since avogadro was added for SBML L3, but this was an L2 model. [LPS]
* Changed `globalRenderInformation` to `renderInformation` in two models. [LPS]
* Removed consecutive `.`'s from filenames [JRK]
    * `BIOMD0000000927/Baker2017_Fig14..xml`
    * `BIOMD0000000928/Baker2017_Fig14..xml`
* Corrected `rdf:resource="urn:miriam:unknown:` in multiple files [JRK]
    * `BIOMD0000000498/BIOMD0000000498.cps`
    * `BIOMD0000000498/BIOMD0000000498_url.xml`
    * `BIOMD0000000498/MitchellMedesIronFigures567.cps`
    * `BIOMD0000000661/BIOMD0000000661_url.xml`
    * `BIOMD0000000661/MODEL1006230046.cps`
    * `BIOMD0000000724/Theinmozhi_2018.cps`
    * `BIOMD0000000724/Theinmozhi_2018.xml`
    * `BIOMD0000000734/BIOMD0000000734.xml`
    * `BIOMD0000000734/Parmar2017_Deficient_Rich_tracer.cps`
    * `BIOMD0000000735/Parmar2017_Adequate_tracer.cps`
    * `BIOMD0000000735/Parmar2017_Adequate_tracer.xml`
    * `BIOMD0000000736/Parmar2017_Adequate_diet_Anemia_NoTracer.cps`
    * `BIOMD0000000736/Parmar2017_Adequate_diet_Anemia_NoTracer.xml`
    * `BIOMD0000000736/Parmar2017_Deficient_NoTracer.xml`
    * `BIOMD0000000737/Parmar2017_Deficient_NoTracer.xml`
    * `BIOMD0000000738/Parmar2017_Rich_NoTracer.cps`
    * `BIOMD0000000738/Parmar2017_Rich_NoTracer.xml`
    * `BIOMD0000000872/MODEL1605030001_url.xml `
    * `BIOMD0000000923/BIOMD0000000923.xml`
    * `BIOMD0000000923/Liò2012_Modelling osteomyelitis_Control Model.cps`
    * `BIOMD0000000923/Liò2012_Modelling osteomyelitis_Control Model.xml`
    * `BIOMD0000000927/Baker2017_Fig14.cps`
    * `BIOMD0000000927/Baker2017_Fig14.xml`
    * `BIOMD0000000928/Baker2017_Fig14.cps`
    * `BIOMD0000000928/Baker2017_Fig14.xml`
    * `BIOMD0000000932/Garde2020.cps`
    * `BIOMD0000000932/Garde2020.xml`
    * `BIOMD0000000933/Kosiuk2015.cps`
    * `BIOMD0000000933/Kosiuk2015.xml`
    * `BIOMD0000000944/Goldbeter2013.cps`
    * `BIOMD0000000944/Goldbeter2013.xml`
    * `BIOMD0000000952/Rodenfels2019_V1.cps`
    * `BIOMD0000000952/Rodenfels2019_V1.xml`
* Corrected `<CopasiMT:unknown rdf:resource=""/>` in multiple files [JRK]
    * `BIOMD0000000930/Liu2017.cps`
    * `BIOMD0000000930/Liu2017.xml`
