######################################################
#Something went wrong during the conversion !
#Try to validate your input file before converting it


org.sbfc.converter.exceptions.ReadModelException: javax.xml.stream.XMLStreamException: JSBML could not properly read file /home/runner/work/temp-biomodels/temp-biomodels/final/BIOMD0000000883/MAP3K8_Thyroid_Spheres_V3.4.cps.xml. Please check if it contains valid SBML. If you think it is valid, please submit a bug report to the bug tracker of JSBML.
	at org.sbfc.converter.models.SBMLModel.modelFromFile(SBMLModel.java:118)
	at org.sbfc.converter.models.SBMLModel.setModelFromFile(SBMLModel.java:84)
	at org.sbfc.converter.Converter.convertFromFile(Converter.java:191)
	at org.sbfc.converter.Converter.convertFromFile(Converter.java:130)
	at org.sbfc.converter.Converter.main(Converter.java:297)
Caused by: javax.xml.stream.XMLStreamException: JSBML could not properly read file /home/runner/work/temp-biomodels/temp-biomodels/final/BIOMD0000000883/MAP3K8_Thyroid_Spheres_V3.4.cps.xml. Please check if it contains valid SBML. If you think it is valid, please submit a bug report to the bug tracker of JSBML.
	at org.sbml.jsbml.xml.stax.SBMLReader.readSBML(SBMLReader.java:322)
	at org.sbml.jsbml.SBMLReader.readSBML(SBMLReader.java:119)
	at org.sbml.jsbml.SBMLReader.read(SBMLReader.java:108)
	at org.sbml.jsbml.SBMLReader.read(SBMLReader.java:95)
	at org.sbml.jsbml.JSBML.readSBML(JSBML.java:347)
	at org.sbfc.converter.models.SBMLModel.modelFromFile(SBMLModel.java:115)
	... 4 more
