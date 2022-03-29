<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.33 (Build 246) (http://www.copasi.org) at 2021-08-05T14:01:47Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="33" versionDevel="246" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_8" name="Henri-Michaelis-Menten (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-02T16:50:21Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate/(Km+substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_47" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_46" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_45" name="V" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Flow" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T23:52:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Q*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Q" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="S" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Flow from organ" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T23:52:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Q*S/Ktp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="Q" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="Ktp" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Glomerular" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-06T11:08:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        S*Flow
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="S" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Flow" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Zake2021 - PBPK model of metformin in mice: single dose peroral" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="stochastic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:6801"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000203"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C38288"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:10095"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:33826656"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-05-26T09:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>j.kurlovics@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kurlovics</vCard:Family>
            <vCard:Given>Janis</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Latvia</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>ktiwari@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Krishna</vCard:Family>
            <vCard:Given>Tiwari</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>egils.stalidzans@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Stalidzans</vCard:Family>
            <vCard:Given>Egils</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Latvian Biomedical Research and Study Centre, University of Latvia</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>darta.zake@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Zake</vCard:Family>
            <vCard:Given>Darta Maija</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Latvian Biomedical Research and Study Centre, University of Latvia</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:biomodels.db:MODEL2103020001"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:fma:FMA:7149"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This model is supplementary material of publication "Physiologically based metformin pharmacokinetics model of mice and scale-up to humans for the estimation of concentrations in various tissues"
by Darta Maija Zake, Linda Zaharenko, Janis Kurlovics, Vitalijs Komasilovs, Janis Klovins and Egils Stalidzans.

The model is pre-set for simulation of a single peroral dose.

This is a whole-body model representing the pharmacokinetics of metformin in the mouse body. The model is in the form of ordinary differential equations and describes metformin concentration in 20 compartments. 

The model consists of 20 compartments (“Compartments” in COPASI model) describing various tissues or tissue sub-compartments and body fluids of metformin action (venous and arterial plasma, intestine, kidney, heart, fat, muscle, brain, lungs, stomach, liver, portal vein, remainder urine and feces). Body weight and the weight of all compartments is expressed as a volume in mL and for the calculations it is assumed that 1mL = 1g. The volumes of most compartments are calculated as a fraction of the body weight/volume, and the fractions are determined from literature data, the volumes of the stomach lumen and intestine lumen are fixed and do not change depending on the body weight.  Similarly, the volume of external urine and feces is set to 1mL, but those are “volumeless” compartments as they are only necessary for the calculation of metformin amount, not concentration. 


The model consists of 20 species (“Species” in COPASI model) that correspond to the metformin concentrations in the 20 compartments. The initial concentrations for all the species are 0 nmol/mL as metformin is not produced in the body and can only be detected after dose administration. 


The model consists of 33 reactions – they describe the transport processes of metformin in the body. The reactions include local parameters that are involved only in that particular reaction and global parameters – parameters that are used in multiple reactions or are calculated depending on another parameter e.g. scale-up coefficients. 


The model consists of 52 global quantities – parameters involved in multiple reactions or necessary for another parameter calculation:

1.Parameters describing metformin dose – either in peroral (Metformin Dose in Lumen in mg) or intravenous (Metformin Dose in Plasma in mg). 

2.Parameter describing mice physiology – body weight (in mL), cardiac output, blood flow to different compartments described as Q”compartment_name” (for example Qliver describes blood flow to the liver compartment). Qgfr refers to the glomerular filtration rate. 

3.Tissue:plasma partition coefficients (Ktp) that are necessary for the scale-up to humans.

4.Parameters involved in the calculation of metformin amount in mg, these parameters are named mg”Compartment_name” (for example mgLiver describes the metformin amount in mg in the liver tissues). 


The time points of dose release are defined as “events” in COPASI and can be changed as necessary. 

Time course simulations can be accessed through the section “Time Course” in this section the time duration and intervals can be changed. When time-course simulations are run three plots are created – Metformin amount in the 20 compartments, metformin concentrations in the compartments and reaction fluxes of all the reactions (see “Output Specifications” -> “Plots” to activate or deactivate plots).
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="IntestineLumen" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:25:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0018543" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Liver" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0002107" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0549
        </Expression>
      </Compartment>
      <Compartment key="Compartment_2" name="KidneyPlasma" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C13356" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:uberon:UBERON:0002113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0056
        </Expression>
      </Compartment>
      <Compartment key="Compartment_3" name="Remainder" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C37895" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.3585
        </Expression>
      </Compartment>
      <Compartment key="Compartment_4" name="PlasmaVenous" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:25:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0004582" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0375
        </Expression>
      </Compartment>
      <Compartment key="Compartment_5" name="Urine" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:06:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001088" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_6" name="Feces" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:06:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_7" name="Heart" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:43:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0000948" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.005
        </Expression>
      </Compartment>
      <Compartment key="Compartment_8" name="Muscle" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:44:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001630" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.384
        </Expression>
      </Compartment>
      <Compartment key="Compartment_9" name="Brain" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:43:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0000955" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0165
        </Expression>
      </Compartment>
      <Compartment key="Compartment_10" name="Adipose" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:53:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001013" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.07
        </Expression>
      </Compartment>
      <Compartment key="Compartment_11" name="PlasmaArterial" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:32:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0004572" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0125
        </Expression>
      </Compartment>
      <Compartment key="Compartment_12" name="Lung" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0002048" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0073
        </Expression>
      </Compartment>
      <Compartment key="Compartment_13" name="PortalVein" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:29:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0002017" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0058
        </Expression>
      </Compartment>
      <Compartment key="Compartment_14" name="Stomach" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:37:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0000945" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.006
        </Expression>
      </Compartment>
      <Compartment key="Compartment_15" name="IntestineEnterocytes" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:09:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000398" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:bto:BTO:0000648" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0025
        </Expression>
      </Compartment>
      <Compartment key="Compartment_16" name="KidneyTissue" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:35:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C12801" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:uberon:UBERON:0002113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0056
        </Expression>
      </Compartment>
      <Compartment key="Compartment_17" name="IntestineVascular" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T15:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C13311" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:bto:BTO:0000648" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0228
        </Expression>
      </Compartment>
      <Compartment key="Compartment_18" name="StomachLumen" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:09:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0013525" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_19" name="KidneyTubular" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T10:55:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:uberon:UBERON:0001231" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0056
        </Expression>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="mLiver" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T11:19:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0002107" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="mKidneyPlasma" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:27:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C13356" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:uberon:UBERON:0002113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="mRemainder" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T15:45:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C37895" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="mPlasmaVenous" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0004582" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          1000000*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Plasma in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Reference=InitialVolume>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="mHeart" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0000948" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="mMuscle" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T15:45:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001630" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="mAdipose" simulationType="reactions" compartment="Compartment_10" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001013" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="mBrain" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0000955" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="mFeces" simulationType="reactions" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:34:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="mUrine" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:39:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001088" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="mIntestineLumen" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-28T09:04:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uberon:UBERON:0018543" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="mPlasmaArterial" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:42:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0004572" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="mLung" simulationType="reactions" compartment="Compartment_12" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:55:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0002048" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="mPortalVein" simulationType="reactions" compartment="Compartment_13" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:00:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0002017"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="mStomach" simulationType="reactions" compartment="Compartment_14" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:42:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0000945" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="mIntestineEnterocytes" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:10:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000398" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:bto:BTO:0000648" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="mKidneyTissue" simulationType="reactions" compartment="Compartment_16" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:57:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C12801" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:uberon:UBERON:0002113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="mIntestineVascular" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T15:38:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C13311" />
    <CopasiMT:isPartOf rdf:resource="urn:miriam:bto:BTO:0000648" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="mStomachLumen" simulationType="reactions" compartment="Compartment_18" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:12:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0013525" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="mKidneyTubular" simulationType="reactions" compartment="Compartment_19" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T11:07:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0001231" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Metformin Dose in Lumen in mg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T12:02:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Metformīna molmasa 129,16 g/mol
        </Comment>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Body Weight" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T14:27:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Metformin Dose in Plasma in mg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-16T22:02:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Cardiac Output" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T18:45:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Ktp_Liver" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Ktp_Brain" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:22:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Ktp_Adipose" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Ktp_Heart" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:39:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Ktp_Kidney" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:23:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Ktp_Muscle" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Ktp_Remainder" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T23:55:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="QAdipose" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:46:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.005
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="QBrain" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:47:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.033
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="QHeart" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:45:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.066
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="QKidney" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:45:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.091
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="QMuscle" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:47:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.159
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="QRemainder" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:48:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.411
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="mgLiver" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:17:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="mgIntestineLumen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:22:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="mgBrain" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:23:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="mgAdipose" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:24:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="mgHeart" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:25:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="mgKidneyPlasma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:26:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="mgRemainder" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:27:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="mgMuscle" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:28:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="mgPortalVein" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-14T11:42:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="mgUrine" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:40:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Vector=Metabolites[mUrine],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="mgFeces" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:41:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Vector=Metabolites[mFeces],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="mgIntestineEnterocytes" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-28T09:22:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Ktp_Lung" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:59:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="mgPlasmaVenous" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:56:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="mgPlasmaArterial" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:58:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="mgLung" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T14:14:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Vector=Metabolites[mLung],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="mgStomach" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T11:22:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="QLiverArtery" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:42:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.02
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="QStomach" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:43:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.02
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="QPortalVein" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:44:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.06
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="QIntestineVascular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:44:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.135
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="QLiverOut" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-04T11:44:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVeinOut],Reference=InitialValue>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverArtery],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Ktp_Stomach" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-07T19:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Ktp_IntestineVascular" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-08T05:04:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="mIntestineSum" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:24:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Reference=InitialVolume>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Reference=InitialVolume>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration>)/(&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Reference=InitialVolume>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Reference=InitialVolume>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Qgfr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:38:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="mKidneySum" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T11:13:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Reference=InitialVolume>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Reference=InitialVolume>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration>)/(&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Reference=InitialVolume>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Reference=InitialVolume>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="mgKidneyTissues" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T11:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Reference=InitialVolume>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="mgIntestineVascular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T16:02:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="mgStomachLumen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:28:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="QPortalVeinOut" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-05T18:04:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach],Reference=InitialValue>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVein],Reference=InitialValue>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="mArterialPlasma (for kidney)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-06T11:06:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="mgKidneyTubular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T13:11:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Reference=InitialVolume>*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="mgKidneyTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-05T06:28:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyPlasma],Reference=Value>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTissues],Reference=Value>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTubular],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="mgIntestineTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-05T06:28:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineEnterocytes],Reference=Value>+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineVascular],Reference=Value>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="03.5. IntestineVascular -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T19:07:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4954" name="Ktp" value="4.6"/>
          <Constant key="Parameter_4953" name="Q" value="113.238"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="06.3. Liver -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T19:11:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4952" name="Q" value="197.118"/>
          <Constant key="Parameter_4951" name="Ktp" value="5.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="13.2. KidneyPlasma -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:09:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4950" name="Q" value="76.3308"/>
          <Constant key="Parameter_4949" name="Ktp" value="4.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="09.2. Muscle -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:13:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4948" name="Q" value="133.369"/>
          <Constant key="Parameter_4947" name="Ktp" value="4.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="12.2. Remainder -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:17:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4946" name="Q" value="344.747"/>
          <Constant key="Parameter_4945" name="Ktp" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="02. IntestineLumen -> Feces" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:57:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4944" name="k1" value="0.177684"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4944"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="13.1. PlasmaArterial -> KidneyPlasma" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:23:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4943" name="Q" value="76.3308"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="09.1. PlasmaArterial -> Muscle" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:24:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4942" name="Q" value="133.369"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="12.1. PlasmaArterial -> Remainder" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:25:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4941" name="Q" value="344.747"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="13.3. KidneyPlasma -> KidneyTubular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-20T14:19:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4940" name="Flow" value="20"/>
          <Constant key="Parameter_4939" name="S" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="06.2. PortalVein -> Liver" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:01:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4938" name="Q" value="180.342"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="05.1. PlasmaArterial -> Stomach" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4937" name="Q" value="16.776"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="05.2. Stomach -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4936" name="Ktp" value="3.2"/>
          <Constant key="Parameter_4935" name="Q" value="16.776"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="04. PlasmaArterial -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-28T14:15:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4934" name="Q" value="50.328"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="03.1. PlasmaArterial -> IntestineVascular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-28T14:18:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4933" name="Q" value="113.238"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="06.1. PlasmaArterial -> Liver" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:01:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4932" name="Q" value="16.776"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="03.2. IntestineLumen -> IntestineEnterocytes (PMAT OCT3)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T17:45:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4931" name="Km" value="900"/>
          <Constant key="Parameter_4930" name="V" value="1271"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_4931"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_4930"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="03.4. IntestineLumen -> IntestineVascular (Saturable)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:14:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4929" name="Km" value="60"/>
          <Constant key="Parameter_4928" name="V" value="19.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_4929"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_4928"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="03.3. IntestineEnterocytes -> IntestineVascular (OCT1)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-17T14:36:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4927" name="Km" value="12300"/>
          <Constant key="Parameter_4926" name="V" value="495"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_4927"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_4926"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="13.4. KidneyPlasma -> KidneyTissue" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:55:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4925" name="Km" value="1380"/>
          <Constant key="Parameter_4924" name="V" value="87339.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_4925"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_4924"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="13.5. KidneyTissue -> KidneyTubular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:58:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4923" name="Km" value="230"/>
          <Constant key="Parameter_4922" name="V" value="3000"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_4923"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_4922"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="01. StomachLumen  -> IntestineLumen" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:10:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4921" name="k1" value="3.16214"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4921"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="07.2. Lung -> PlasmaArterial" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4920" name="Ktp" value="3"/>
          <Constant key="Parameter_4919" name="Q" value="838.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="07.1. PlasmaVenous -> Lung" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:53:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4918" name="Q" value="838.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="08.2. Brain -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4917" name="Ktp" value="0.8"/>
          <Constant key="Parameter_4916" name="Q" value="27.6804"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="08.1. PlasmaArterial -> Brain" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:55:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4915" name="Q" value="27.6804"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="11.2. Heart -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:56:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4914" name="Ktp" value="2.50009"/>
          <Constant key="Parameter_4913" name="Q" value="55.3608"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="11.1. PlasmaArterial -> Heart" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:57:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4912" name="Q" value="55.3608"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="10.2. Adipose -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:57:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4911" name="Ktp" value="0.73"/>
          <Constant key="Parameter_4910" name="Q" value="4.194"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="10.1. PlasmaArterial -> Adipose" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4909" name="Q" value="4.194"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="13.6. KidneyTubular -> UrineExternal" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T11:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4908" name="k1" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4908"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="03.6. IntestineLumen -> IntestineEnterocytes (Diffusion)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82333" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4907" name="k1" value="0.14"/>
          <Constant key="Parameter_4906" name="k2" value="0.14"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4907"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4906"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="03.7. IntestineLumen -> IntestineVascular (Diffusion)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82333" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015893" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4905" name="k1" value="0.26"/>
          <Constant key="Parameter_4904" name="k2" value="0.26"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4905"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4904"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Oral at 0.001" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T08:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time> > 0.001
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]" value="0.59999999999999998" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver]" value="1.5097499999999999" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma]" value="0.154" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder]" value="9.8587499999999988" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous]" value="1.03125" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart]" value="0.13750000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle]" value="10.56" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain]" value="0.45375000000000004" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose]" value="1.9250000000000003" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial]" value="0.34375" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung]" value="0.20075000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein]" value="0.15949999999999998" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach]" value="0.16500000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes]" value="0.068750000000000006" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue]" value="0.154" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular]" value="0.627" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen]" value="0.40000000000000002" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular]" value="0.154" type="Compartment" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              1000000*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Plasma in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Reference=InitialVolume>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Vector=Metabolites[mFeces]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Vector=Metabolites[mUrine]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Vector=Metabolites[mLung]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Lumen in mg]" value="1.375" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight]" value="27.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Plasma in mg]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output]" value="838.79999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Liver]" value="5.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Brain]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Adipose]" value="0.72999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Heart]" value="2.5000888052378851" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Kidney]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Muscle]" value="4.0999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Remainder]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QAdipose]" value="4.194" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QBrain]" value="27.680399999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QHeart]" value="55.360799999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QKidney]" value="76.330799999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QMuscle]" value="133.36920000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QRemainder]" value="344.74679999999995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLiver]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineLumen]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgBrain]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgAdipose]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgHeart]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyPlasma]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgRemainder]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgMuscle]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPortalVein]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgFeces]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineEnterocytes]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Lung]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaVenous]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaArterial]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLung]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomach]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverArtery]" value="16.776" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach]" value="16.776" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVein]" value="50.327999999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular]" value="113.238" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverOut]" value="197.11799999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Stomach]" value="3.2000000000141733" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_IntestineVascular]" value="4.5999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Qgfr]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mKidneySum]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTissues]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineVascular]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomachLumen]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVeinOut]" value="180.34199999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mArterialPlasma (for kidney)]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTubular]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTotal]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineTotal]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],ParameterGroup=Parameters,Parameter=Ktp" value="4.5999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_IntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="113.238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="197.11799999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverOut],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="5.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Liver],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="76.330799999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QKidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="4.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Kidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="133.36920000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QMuscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Muscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="344.74679999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QRemainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Remainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[02. IntestineLumen -\> Feces]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[02. IntestineLumen -\> Feces],ParameterGroup=Parameters,Parameter=k1" value="0.17768400000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma],ParameterGroup=Parameters,Parameter=Q" value="76.330799999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QKidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.1. PlasmaArterial -\> Muscle]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.1. PlasmaArterial -\> Muscle],ParameterGroup=Parameters,Parameter=Q" value="133.36920000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QMuscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.1. PlasmaArterial -\> Remainder]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.1. PlasmaArterial -\> Remainder],ParameterGroup=Parameters,Parameter=Q" value="344.74679999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QRemainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular],ParameterGroup=Parameters,Parameter=Flow" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Qgfr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular],ParameterGroup=Parameters,Parameter=S" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mArterialPlasma (for kidney)],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.2. PortalVein -\> Liver]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.2. PortalVein -\> Liver],ParameterGroup=Parameters,Parameter=Q" value="180.34199999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVeinOut],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.1. PlasmaArterial -\> Stomach]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.1. PlasmaArterial -\> Stomach],ParameterGroup=Parameters,Parameter=Q" value="16.776" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein],ParameterGroup=Parameters,Parameter=Ktp" value="3.2000000000141733" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Stomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="16.776" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[04. PlasmaArterial -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[04. PlasmaArterial -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="50.327999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVein],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular],ParameterGroup=Parameters,Parameter=Q" value="113.238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.1. PlasmaArterial -\> Liver]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.1. PlasmaArterial -\> Liver],ParameterGroup=Parameters,Parameter=Q" value="16.776" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverArtery],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)],ParameterGroup=Parameters,Parameter=Km" value="900" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)],ParameterGroup=Parameters,Parameter=V" value="1271" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],ParameterGroup=Parameters,Parameter=Km" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],ParameterGroup=Parameters,Parameter=V" value="19.199999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)],ParameterGroup=Parameters,Parameter=Km" value="12300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)],ParameterGroup=Parameters,Parameter=V" value="495" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],ParameterGroup=Parameters,Parameter=Km" value="1380" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],ParameterGroup=Parameters,Parameter=V" value="87339.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],ParameterGroup=Parameters,Parameter=Km" value="230" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],ParameterGroup=Parameters,Parameter=V" value="3000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[01. StomachLumen  -\> IntestineLumen]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[01. StomachLumen  -\> IntestineLumen],ParameterGroup=Parameters,Parameter=k1" value="3.16214" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial],ParameterGroup=Parameters,Parameter=Ktp" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Lung],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial],ParameterGroup=Parameters,Parameter=Q" value="838.79999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.1. PlasmaVenous -\> Lung]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.1. PlasmaVenous -\> Lung],ParameterGroup=Parameters,Parameter=Q" value="838.79999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Brain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="27.680399999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QBrain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.1. PlasmaArterial -\> Brain]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.1. PlasmaArterial -\> Brain],ParameterGroup=Parameters,Parameter=Q" value="27.680399999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QBrain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="2.5000888052378851" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Heart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="55.360799999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QHeart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.1. PlasmaArterial -\> Heart]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.1. PlasmaArterial -\> Heart],ParameterGroup=Parameters,Parameter=Q" value="55.360799999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QHeart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.72999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Adipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="4.194" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QAdipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.1. PlasmaArterial -\> Adipose]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.1. PlasmaArterial -\> Adipose],ParameterGroup=Parameters,Parameter=Q" value="4.194" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[QAdipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal],ParameterGroup=Parameters,Parameter=k1" value="1.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)],ParameterGroup=Parameters,Parameter=k1" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)],ParameterGroup=Parameters,Parameter=k2" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],ParameterGroup=Parameters,Parameter=k1" value="0.26000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],ParameterGroup=Parameters,Parameter=k2" value="0.26000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Compartment_8"/>
      <StateTemplateVariable objectReference="Compartment_9"/>
      <StateTemplateVariable objectReference="Compartment_10"/>
      <StateTemplateVariable objectReference="Compartment_11"/>
      <StateTemplateVariable objectReference="Compartment_12"/>
      <StateTemplateVariable objectReference="Compartment_13"/>
      <StateTemplateVariable objectReference="Compartment_14"/>
      <StateTemplateVariable objectReference="Compartment_15"/>
      <StateTemplateVariable objectReference="Compartment_16"/>
      <StateTemplateVariable objectReference="Compartment_17"/>
      <StateTemplateVariable objectReference="Compartment_19"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_18"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.5097499999999999 0.154 9.8587499999999988 1.03125 0.13750000000000001 10.56 0.45375000000000004 1.9250000000000003 0.34375 0.20075000000000001 0.15949999999999998 0.16500000000000001 0.068750000000000006 0.154 0.627 0.154 4.194 27.680399999999999 55.360799999999998 76.330799999999996 133.36920000000001 344.74679999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16.776 16.776 50.327999999999996 113.238 197.11799999999999 0 0 0 0 0 180.34199999999998 0 0 0 0 0.59999999999999998 1 1 0.40000000000000002 1.375 27.5 0 838.79999999999995 5.5 0.80000000000000004 0.72999999999999998 2.5000888052378851 4.5 4.0999999999999996 0.80000000000000004 3 3.2000000000141733 4.5999999999999996 20 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="3000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="30"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_IntestineVascular],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="3.1000000000000001"/>
            <Parameter name="Maximum" type="float" value="6.0999999999999996"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="true">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Wilcock PO">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="../../../modeļi_metformīns/2020 10 15 izejas kartosana Egils/Wilcock 1993 v21_PO bez 2 stundas.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="11"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="0"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="14"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration"/>
                <Parameter name="Weight" type="unsignedFloat" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mKidneySum],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgFeces],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine],Reference=Value"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="Wilcock IV">
            <Parameter name="Key" type="key" value="Experiment_1"/>
            <Parameter name="File Name" type="file" value="../../../modeļi_metformīns/2020 10 15 izejas kartosana Egils/Wilcocks 1993 v21 IV.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="8"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="7"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine],Reference=Value"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="200000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="50"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Iterations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="2"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="mAdipose" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mBrain" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mFeces" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Vector=Metabolites[mFeces],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mHeart" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mIntestineEnterocytes" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mIntestineLumen" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mIntestineSum" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mIntestineVascular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mKidneyPlasma" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mKidneySum" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mKidneySum],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mKidneyTissue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mKidneyTubular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mLiver" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mLung" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Vector=Metabolites[mLung],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mMuscle" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mPlasmaArterial" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mPlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mPortalVein" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mRemainder" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mStomach" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mStomachLumen" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mUrine" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Vector=Metabolites[mUrine],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Reaction Fluxes" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="01. StomachLumen  -> IntestineLumen" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[01. StomachLumen  -\> IntestineLumen],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="02. IntestineLumen -> Feces" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[02. IntestineLumen -\> Feces],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.1. PlasmaArterial -> IntestineVascular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.2. IntestineLumen -> IntestineEnterocytes (PMAT OCT3)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.3. IntestineEnterocytes -> IntestineVascular (OCT1)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.4. IntestineLumen -> IntestineVascular (Saturable)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.5. IntestineVascular -> PortalVein" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.6. IntestineLumen -> IntestineEnterocytes (Diffusion)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.7. IntestineLumen -> IntestineVascular (Diffusion)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="04. PlasmaArterial -> PortalVein" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[04. PlasmaArterial -\> PortalVein],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="05.1. PlasmaArterial -> Stomach" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.1. PlasmaArterial -\> Stomach],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="05.2. Stomach -> PortalVein" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="06.1. PlasmaArterial -> Liver" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.1. PlasmaArterial -\> Liver],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="06.2. PortalVein -> Liver" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.2. PortalVein -\> Liver],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="06.3. Liver -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="07.1. PlasmaVenous -> Lung" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.1. PlasmaVenous -\> Lung],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="07.2. Lung -> PlasmaArterial" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="08.1. PlasmaArterial -> Brain" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.1. PlasmaArterial -\> Brain],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="08.2. Brain -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="09.1. PlasmaArterial -> Muscle" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.1. PlasmaArterial -\> Muscle],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="09.2. Muscle -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="10.1. PlasmaArterial -> Adipose" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.1. PlasmaArterial -\> Adipose],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="10.2. Adipose -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="11.1. PlasmaArterial -> Heart" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.1. PlasmaArterial -\> Heart],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="11.2. Heart -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="12.1. PlasmaArterial -> Remainder" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.1. PlasmaArterial -\> Remainder],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="12.2. Remainder -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.1. PlasmaArterial -> KidneyPlasma" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.2. KidneyPlasma -> PlasmaVenous)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.3. KidneyPlasma -> KidneyTubular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.4. KidneyPlasma -> KidneyTissue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.5. KidneyTissue -> KidneyTubular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.6. KidneyTubular -> UrineExternal" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Amount, mg" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="mgAdipose" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgAdipose],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgBrain" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgBrain],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgFeces" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgFeces],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgHeart" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgHeart],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgIntestineEnterocytes" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineEnterocytes],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgIntestineLumen" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineLumen],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgIntestineTotal" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineTotal],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgIntestineVascular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineVascular],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgKidneyPlasma" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyPlasma],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgKidneyTissues" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTissues],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgKidneyTotal" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTotal],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgKidneyTubular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTubular],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgLiver" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLiver],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgLung" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLung],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgMuscle" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgMuscle],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgPlasmaArterial" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaArterial],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgPlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaVenous],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgPortalVein" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPortalVein],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgRemainder" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgRemainder],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgStomach" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomach],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgStomachLumen" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomachLumen],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgUrine" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue" objectType="float" objectValue="27.5" minValue="2.75" maxValue="275" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_1" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Zake2021 - PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue" objectType="float" objectValue="1.375" minValue="0.1375" maxValue="13.75" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="Zake2021_Metformin+Mice+PO.xml">
    <SBMLMap SBMLid="Adipose" COPASIkey="Compartment_10"/>
    <SBMLMap SBMLid="Body_Weight" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Brain" COPASIkey="Compartment_9"/>
    <SBMLMap SBMLid="Cardiac_Output" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Feces" COPASIkey="Compartment_6"/>
    <SBMLMap SBMLid="Flow" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Flow_from_organ" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Glomerular" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Heart" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible" COPASIkey="Function_8"/>
    <SBMLMap SBMLid="IntestineEnterocytes" COPASIkey="Compartment_15"/>
    <SBMLMap SBMLid="IntestineLumen" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="IntestineVascular" COPASIkey="Compartment_17"/>
    <SBMLMap SBMLid="KidneyPlasma" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="KidneyTissue" COPASIkey="Compartment_16"/>
    <SBMLMap SBMLid="KidneyTubular" COPASIkey="Compartment_19"/>
    <SBMLMap SBMLid="Ktp_Adipose" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Ktp_Brain" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Ktp_Heart" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Ktp_IntestineVascular" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="Ktp_Kidney" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Ktp_Liver" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Ktp_Lung" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Ktp_Muscle" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Ktp_Remainder" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Ktp_Stomach" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="Liver" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Lung" COPASIkey="Compartment_12"/>
    <SBMLMap SBMLid="Metformin_Dose_in_Lumen_in_mg" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Metformin_Dose_in_Plasma_in_mg" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Muscle" COPASIkey="Compartment_8"/>
    <SBMLMap SBMLid="PlasmaArterial" COPASIkey="Compartment_11"/>
    <SBMLMap SBMLid="PlasmaVenous" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="PortalVein" COPASIkey="Compartment_13"/>
    <SBMLMap SBMLid="QAdipose" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="QBrain" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="QHeart" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="QIntestineVascular" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="QKidney" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="QLiverArtery" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="QLiverOut" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="QMuscle" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="QPortalVein" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="QPortalVeinOut" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="QRemainder" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="QStomach" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Qgfr" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Remainder" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="Stomach" COPASIkey="Compartment_14"/>
    <SBMLMap SBMLid="StomachLumen" COPASIkey="Compartment_18"/>
    <SBMLMap SBMLid="Urine" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="_01__StomachLumen_____IntestineLumen" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="_02__IntestineLumen____Feces" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="_03_1__PlasmaArterial____IntestineVascular" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="_03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="_03_3__IntestineEnterocytes____IntestineVascular__OCT1" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="_03_4__IntestineLumen____IntestineVascular__Saturable" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="_03_5__IntestineVascular____PortalVein" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="_03_6__IntestineLumen____IntestineEnterocytes__Diffusion" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="_03_7__IntestineLumen____IntestineVascular__Diffusion" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="_04__PlasmaArterial____PortalVein" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="_05_1__PlasmaArterial____Stomach" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="_05_2__Stomach____PortalVein" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="_06_1__PlasmaArterial____Liver" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="_06_2__PortalVein____Liver" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="_06_3__Liver____PlasmaVenous" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="_07_1__PlasmaVenous____Lung" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="_07_2__Lung____PlasmaArterial" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="_08_1__PlasmaArterial____Brain" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="_08_2__Brain____PlasmaVenous" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="_09_1__PlasmaArterial____Muscle" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="_09_2__Muscle____PlasmaVenous" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="_10_1__PlasmaArterial____Adipose" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="_10_2__Adipose____PlasmaVenous" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="_11_1__PlasmaArterial____Heart" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="_11_2__Heart____PlasmaVenous" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="_12_1__PlasmaArterial____Remainder" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="_12_2__Remainder____PlasmaVenous" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="_13_1__PlasmaArterial____KidneyPlasma" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="_13_2__KidneyPlasma____PlasmaVenous" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="_13_3__KidneyPlasma____KidneyTubular" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="_13_4__KidneyPlasma____KidneyTissue" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="_13_5__KidneyTissue____KidneyTubular" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="_13_6__KidneyTubular____UrineExternal" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="mAdipose" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="mArterialPlasma__for_kidney" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="mBrain" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="mFeces" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="mHeart" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="mIntestineEnterocytes" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="mIntestineLumen" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="mIntestineSum" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="mIntestineVascular" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="mKidneyPlasma" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="mKidneySum" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="mKidneyTissue" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="mKidneyTubular" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="mLiver" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="mLung" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="mMuscle" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="mPlasmaArterial" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="mPlasmaVenous" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="mPortalVein" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="mRemainder" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="mStomach" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="mStomachLumen" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="mUrine" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="mgAdipose" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="mgBrain" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="mgFeces" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="mgHeart" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="mgIntestineEnterocytes" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="mgIntestineLumen" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="mgIntestineTotal" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="mgIntestineVascular" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="mgKidneyPlasma" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="mgKidneyTissues" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="mgKidneyTotal" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="mgKidneyTubular" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="mgLiver" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="mgLung" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="mgMuscle" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="mgPlasmaArterial" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="mgPlasmaVenous" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="mgPortalVein" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="mgRemainder" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="mgStomach" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="mgStomachLumen" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="mgUrine" COPASIkey="ModelValue_26"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_67" name="hour" symbol="h">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
