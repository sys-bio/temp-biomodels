<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-10-26T14:58:39Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
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
  <Model key="Model_1" name="PBPK model of metformin in mice: single dose peroral" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="stochastic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-05-26T09:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
      <Compartment key="Compartment_20" name="IntestineLumen" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:25:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_21" name="Liver" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0549
        </Expression>
      </Compartment>
      <Compartment key="Compartment_22" name="KidneyPlasma" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0056
        </Expression>
      </Compartment>
      <Compartment key="Compartment_23" name="Remainder" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.3585
        </Expression>
      </Compartment>
      <Compartment key="Compartment_24" name="PlasmaVenous" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:25:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0375
        </Expression>
      </Compartment>
      <Compartment key="Compartment_25" name="Urine" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:06:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_26" name="Feces" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:06:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_27" name="Heart" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:43:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.005
        </Expression>
      </Compartment>
      <Compartment key="Compartment_28" name="Muscle" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:44:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.384
        </Expression>
      </Compartment>
      <Compartment key="Compartment_29" name="Brain" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:43:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0165
        </Expression>
      </Compartment>
      <Compartment key="Compartment_30" name="Adipose" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:53:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.07
        </Expression>
      </Compartment>
      <Compartment key="Compartment_31" name="PlasmaArterial" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:32:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0125
        </Expression>
      </Compartment>
      <Compartment key="Compartment_32" name="Lung" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0073
        </Expression>
      </Compartment>
      <Compartment key="Compartment_33" name="PortalVein" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:29:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0058
        </Expression>
      </Compartment>
      <Compartment key="Compartment_34" name="Stomach" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:37:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.006
        </Expression>
      </Compartment>
      <Compartment key="Compartment_35" name="IntestineEnterocytes" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:09:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0025
        </Expression>
      </Compartment>
      <Compartment key="Compartment_36" name="KidneyTissue" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:35:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0056
        </Expression>
      </Compartment>
      <Compartment key="Compartment_37" name="IntestineVascular" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T15:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0228
        </Expression>
      </Compartment>
      <Compartment key="Compartment_38" name="StomachLumen" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:09:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_39" name="KidneyTubular" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T10:55:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue>*0.0056
        </Expression>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_20" name="mLiver" simulationType="reactions" compartment="Compartment_21" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T11:19:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="mKidneyPlasma" simulationType="reactions" compartment="Compartment_22" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:27:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="mRemainder" simulationType="reactions" compartment="Compartment_23" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T15:45:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="mPlasmaVenous" simulationType="reactions" compartment="Compartment_24" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          1000000*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Plasma in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Reference=InitialVolume>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="mHeart" simulationType="reactions" compartment="Compartment_27" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="mMuscle" simulationType="reactions" compartment="Compartment_28" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T15:45:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="mAdipose" simulationType="reactions" compartment="Compartment_30" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="mBrain" simulationType="reactions" compartment="Compartment_29" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="mFeces" simulationType="reactions" compartment="Compartment_26" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:34:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="mUrine" simulationType="reactions" compartment="Compartment_25" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:39:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="mIntestineLumen" simulationType="reactions" compartment="Compartment_20" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-28T09:04:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="mPlasmaArterial" simulationType="reactions" compartment="Compartment_31" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:42:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="mLung" simulationType="reactions" compartment="Compartment_32" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:55:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="mPortalVein" simulationType="reactions" compartment="Compartment_33" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:00:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="mStomach" simulationType="reactions" compartment="Compartment_34" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:42:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="mIntestineEnterocytes" simulationType="reactions" compartment="Compartment_35" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:10:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="mKidneyTissue" simulationType="reactions" compartment="Compartment_36" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:57:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="mIntestineVascular" simulationType="reactions" compartment="Compartment_37" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T15:38:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="mStomachLumen" simulationType="reactions" compartment="Compartment_38" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:12:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="mKidneyTubular" simulationType="reactions" compartment="Compartment_39" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T11:07:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_58" name="Metformin Dose in Lumen in mg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
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
      <ModelValue key="ModelValue_57" name="Body Weight" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
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
      <ModelValue key="ModelValue_54" name="Metformin Dose in Plasma in mg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
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
      <ModelValue key="ModelValue_53" name="Cardiac Output" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
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
      <ModelValue key="ModelValue_52" name="Ktp_Liver" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Ktp_Brain" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:22:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Ktp_Adipose" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Ktp_Heart" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:39:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Ktp_Kidney" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:23:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="Ktp_Muscle" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="Ktp_Remainder" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T23:55:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="QAdipose" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:46:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.005
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="QBrain" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:47:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.033
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="QHeart" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:45:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.066
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="QKidney" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:45:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.091
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="QMuscle" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:47:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.159
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="QRemainder" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:48:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.411
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="mgLiver" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:17:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="mgIntestineLumen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:22:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="mgBrain" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:23:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="mgAdipose" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:24:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="mgHeart" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:25:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="mgKidneyPlasma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:26:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="mgRemainder" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:27:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="mgMuscle" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:28:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="mgPortalVein" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-14T11:42:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="mgUrine" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:40:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Vector=Metabolites[mUrine],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="mgFeces" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:41:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Vector=Metabolites[mFeces],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="mgIntestineEnterocytes" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-28T09:22:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="Ktp_Lung" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:59:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="mgPlasmaVenous" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:56:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="mgPlasmaArterial" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:58:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="mgLung" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T14:14:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Vector=Metabolites[mLung],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="mgStomach" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T11:22:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="QLiverArtery" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:42:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.02
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="QStomach" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:43:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.02
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="QPortalVein" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:44:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.06
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="QIntestineVascular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:44:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>*0.135
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="QLiverOut" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-04T11:44:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVeinOut],Reference=InitialValue>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverArtery],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Ktp_Stomach" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-07T19:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="Ktp_IntestineVascular" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-08T05:04:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="mIntestineSum" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:24:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration>)/(&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Reference=InitialVolume>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="Qgfr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:38:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="mKidneySum" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T11:13:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration>)/(&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Reference=InitialVolume>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="mgKidneyTissues" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T11:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="mgIntestineVascular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T16:02:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="mgStomachLumen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:28:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="QPortalVeinOut" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-05T18:04:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach],Reference=InitialValue>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVein],Reference=InitialValue>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="mArterialPlasma (for kidney)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-06T11:06:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="mgKidneyTubular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T13:11:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="mgKidneyTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-05T06:28:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyPlasma],Reference=Value>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTissues],Reference=Value>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTubular],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="mgIntestineTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-05T06:28:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineEnterocytes],Reference=Value>+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineVascular],Reference=Value>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_33" name="03.5. IntestineVascular -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T19:07:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7998" name="Ktp" value="4.6"/>
          <Constant key="Parameter_8004" name="Q" value="113.238"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="06.3. Liver -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T19:11:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8003" name="Q" value="197.118"/>
          <Constant key="Parameter_8005" name="Ktp" value="5.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="13.2. KidneyPlasma -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:09:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7999" name="Q" value="76.3308"/>
          <Constant key="Parameter_4591" name="Ktp" value="4.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="09.2. Muscle -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:13:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4589" name="Q" value="133.369"/>
          <Constant key="Parameter_4592" name="Ktp" value="4.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="12.2. Remainder -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:17:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4590" name="Q" value="344.747"/>
          <Constant key="Parameter_4593" name="Ktp" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="02. IntestineLumen -> Feces" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:57:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4630" name="k1" value="0.177684"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4630"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="13.1. PlasmaArterial -> KidneyPlasma" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:23:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4629" name="Q" value="76.3308"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="09.1. PlasmaArterial -> Muscle" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:24:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8236" name="Q" value="133.369"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="12.1. PlasmaArterial -> Remainder" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:25:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8235" name="Q" value="344.747"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="13.3. KidneyPlasma -> KidneyTubular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-20T14:19:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8246" name="Flow" value="20"/>
          <Constant key="Parameter_7406" name="S" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="06.2. PortalVein -> Liver" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:01:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7436" name="Q" value="180.342"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="05.1. PlasmaArterial -> Stomach" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7427" name="Q" value="16.776"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="05.2. Stomach -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8240" name="Ktp" value="3.2"/>
          <Constant key="Parameter_7412" name="Q" value="16.776"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="04. PlasmaArterial -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-28T14:15:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7446" name="Q" value="50.328"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="03.1. PlasmaArterial -> IntestineVascular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-28T14:18:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7413" name="Q" value="113.238"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="06.1. PlasmaArterial -> Liver" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:01:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8234" name="Q" value="16.776"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="03.2. IntestineLumen -> IntestineEnterocytes (PMAT OCT3)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T17:45:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7392" name="Km" value="900"/>
          <Constant key="Parameter_8230" name="V" value="1271"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_7392"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_8230"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="03.4. IntestineLumen -> IntestineVascular (Saturable)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:14:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7423" name="Km" value="60"/>
          <Constant key="Parameter_7450" name="V" value="19.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_7423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_7450"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="03.3. IntestineEnterocytes -> IntestineVascular (OCT1)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-17T14:36:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7417" name="Km" value="12300"/>
          <Constant key="Parameter_8232" name="V" value="495"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_7417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_8232"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="13.4. KidneyPlasma -> KidneyTissue" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:55:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7395" name="Km" value="1380"/>
          <Constant key="Parameter_7430" name="V" value="87339.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_7395"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_7430"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="13.5. KidneyTissue -> KidneyTubular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:58:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8249" name="Km" value="230"/>
          <Constant key="Parameter_7454" name="V" value="3000"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_8249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_7454"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="01. StomachLumen  -> IntestineLumen" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:10:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7426" name="k1" value="3.16214"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7426"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="07.2. Lung -> PlasmaArterial" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8222" name="Ktp" value="3"/>
          <Constant key="Parameter_8243" name="Q" value="838.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="07.1. PlasmaVenous -> Lung" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:53:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8248" name="Q" value="838.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="08.2. Brain -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8228" name="Ktp" value="0.8"/>
          <Constant key="Parameter_8223" name="Q" value="27.6804"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="08.1. PlasmaArterial -> Brain" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:55:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8225" name="Q" value="27.6804"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="11.2. Heart -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:56:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8224" name="Ktp" value="2.50009"/>
          <Constant key="Parameter_8229" name="Q" value="55.3608"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="11.1. PlasmaArterial -> Heart" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:57:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8220" name="Q" value="55.3608"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="10.2. Adipose -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:57:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8218" name="Ktp" value="0.73"/>
          <Constant key="Parameter_8221" name="Q" value="4.194"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="10.1. PlasmaArterial -> Adipose" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8215" name="Q" value="4.194"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="13.6. KidneyTubular -> UrineExternal" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T11:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8214" name="k1" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_8214"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="03.6. IntestineLumen -> IntestineEnterocytes (Diffusion)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8219" name="k1" value="0.14"/>
          <Constant key="Parameter_8210" name="k2" value="0.14"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_8219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_8210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="03.7. IntestineLumen -> IntestineVascular (Diffusion)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8216" name="k1" value="0.26"/>
          <Constant key="Parameter_8211" name="k2" value="0.26"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_8216"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_8211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_1" name="Oral at 0.001" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T08:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time> > 0.001
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_38">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T14:53:08Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen]" value="0.59999999999999998" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver]" value="1.5097499999999999" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma]" value="0.154" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder]" value="9.8587499999999988" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous]" value="1.03125" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart]" value="0.13750000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle]" value="10.56" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain]" value="0.45375000000000004" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose]" value="1.9250000000000003" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial]" value="0.34375" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung]" value="0.20075000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein]" value="0.15949999999999998" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach]" value="0.16500000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes]" value="0.068750000000000006" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue]" value="0.154" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular]" value="0.627" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen]" value="0.40000000000000002" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular]" value="0.154" type="Compartment" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Plasma in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Reference=InitialVolume>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Vector=Metabolites[mFeces]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Vector=Metabolites[mUrine]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Vector=Metabolites[mLung]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Lumen in mg]" value="1.375" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight]" value="27.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Plasma in mg]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output]" value="838.79999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Liver]" value="5.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Brain]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Adipose]" value="0.72999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Heart]" value="2.5000888052378851" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Kidney]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Muscle]" value="4.0999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Remainder]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QAdipose]" value="4.194" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QBrain]" value="27.680399999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QHeart]" value="55.360799999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QKidney]" value="76.330799999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QMuscle]" value="133.36920000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QRemainder]" value="344.74679999999995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLiver]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineLumen]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgBrain]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgAdipose]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgHeart]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyPlasma]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgRemainder]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgMuscle]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPortalVein]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgFeces]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineEnterocytes]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Lung]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaVenous]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaArterial]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLung]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomach]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverArtery]" value="16.776" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach]" value="16.776" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVein]" value="50.327999999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular]" value="113.238" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverOut]" value="197.11799999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Stomach]" value="3.2000000000141733" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_IntestineVascular]" value="4.5999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Qgfr]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mKidneySum]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTissues]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineVascular]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomachLumen]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVeinOut]" value="180.34199999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mArterialPlasma (for kidney)]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTubular]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTotal]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineTotal]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],ParameterGroup=Parameters,Parameter=Ktp" value="4.5999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_IntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="113.238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="197.11799999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverOut],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="5.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Liver],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="76.330799999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QKidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="4.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Kidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="133.36920000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QMuscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Muscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="344.74679999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QRemainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Remainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[02. IntestineLumen -\> Feces]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[02. IntestineLumen -\> Feces],ParameterGroup=Parameters,Parameter=k1" value="0.17768400000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma],ParameterGroup=Parameters,Parameter=Q" value="76.330799999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QKidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.1. PlasmaArterial -\> Muscle]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.1. PlasmaArterial -\> Muscle],ParameterGroup=Parameters,Parameter=Q" value="133.36920000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QMuscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.1. PlasmaArterial -\> Remainder]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.1. PlasmaArterial -\> Remainder],ParameterGroup=Parameters,Parameter=Q" value="344.74679999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QRemainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular],ParameterGroup=Parameters,Parameter=Flow" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Qgfr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular],ParameterGroup=Parameters,Parameter=S" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mArterialPlasma (for kidney)],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.2. PortalVein -\> Liver]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.2. PortalVein -\> Liver],ParameterGroup=Parameters,Parameter=Q" value="180.34199999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVeinOut],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.1. PlasmaArterial -\> Stomach]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.1. PlasmaArterial -\> Stomach],ParameterGroup=Parameters,Parameter=Q" value="16.776" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein],ParameterGroup=Parameters,Parameter=Ktp" value="3.2000000000141733" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Stomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="16.776" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QStomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[04. PlasmaArterial -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[04. PlasmaArterial -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="50.327999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QPortalVein],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular],ParameterGroup=Parameters,Parameter=Q" value="113.238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QIntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.1. PlasmaArterial -\> Liver]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.1. PlasmaArterial -\> Liver],ParameterGroup=Parameters,Parameter=Q" value="16.776" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QLiverArtery],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)],ParameterGroup=Parameters,Parameter=Km" value="900" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)],ParameterGroup=Parameters,Parameter=V" value="1271" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],ParameterGroup=Parameters,Parameter=Km" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],ParameterGroup=Parameters,Parameter=V" value="19.199999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)],ParameterGroup=Parameters,Parameter=Km" value="12300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)],ParameterGroup=Parameters,Parameter=V" value="495" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],ParameterGroup=Parameters,Parameter=Km" value="1380" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],ParameterGroup=Parameters,Parameter=V" value="87339.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],ParameterGroup=Parameters,Parameter=Km" value="230" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],ParameterGroup=Parameters,Parameter=V" value="3000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[01. StomachLumen  -\> IntestineLumen]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[01. StomachLumen  -\> IntestineLumen],ParameterGroup=Parameters,Parameter=k1" value="3.16214" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial],ParameterGroup=Parameters,Parameter=Ktp" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Lung],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial],ParameterGroup=Parameters,Parameter=Q" value="838.79999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.1. PlasmaVenous -\> Lung]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.1. PlasmaVenous -\> Lung],ParameterGroup=Parameters,Parameter=Q" value="838.79999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Cardiac Output],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Brain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="27.680399999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QBrain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.1. PlasmaArterial -\> Brain]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.1. PlasmaArterial -\> Brain],ParameterGroup=Parameters,Parameter=Q" value="27.680399999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QBrain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="2.5000888052378851" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Heart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="55.360799999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QHeart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.1. PlasmaArterial -\> Heart]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.1. PlasmaArterial -\> Heart],ParameterGroup=Parameters,Parameter=Q" value="55.360799999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QHeart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.72999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_Adipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="4.194" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QAdipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.1. PlasmaArterial -\> Adipose]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.1. PlasmaArterial -\> Adipose],ParameterGroup=Parameters,Parameter=Q" value="4.194" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[QAdipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal],ParameterGroup=Parameters,Parameter=k1" value="1.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)],ParameterGroup=Parameters,Parameter=k1" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)],ParameterGroup=Parameters,Parameter=k2" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],ParameterGroup=Parameters,Parameter=k1" value="0.26000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],ParameterGroup=Parameters,Parameter=k2" value="0.26000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Compartment_21"/>
      <StateTemplateVariable objectReference="Compartment_22"/>
      <StateTemplateVariable objectReference="Compartment_23"/>
      <StateTemplateVariable objectReference="Compartment_24"/>
      <StateTemplateVariable objectReference="Compartment_27"/>
      <StateTemplateVariable objectReference="Compartment_28"/>
      <StateTemplateVariable objectReference="Compartment_29"/>
      <StateTemplateVariable objectReference="Compartment_30"/>
      <StateTemplateVariable objectReference="Compartment_31"/>
      <StateTemplateVariable objectReference="Compartment_32"/>
      <StateTemplateVariable objectReference="Compartment_33"/>
      <StateTemplateVariable objectReference="Compartment_34"/>
      <StateTemplateVariable objectReference="Compartment_35"/>
      <StateTemplateVariable objectReference="Compartment_36"/>
      <StateTemplateVariable objectReference="Compartment_37"/>
      <StateTemplateVariable objectReference="Compartment_39"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="Compartment_20"/>
      <StateTemplateVariable objectReference="Compartment_25"/>
      <StateTemplateVariable objectReference="Compartment_26"/>
      <StateTemplateVariable objectReference="Compartment_38"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.5097499999999999 0.154 9.8587499999999988 1.03125 0.13750000000000001 10.56 0.45375000000000004 1.9250000000000003 0.34375 0.20075000000000001 0.15949999999999998 0.16500000000000001 0.068750000000000006 0.154 0.627 0.154 4.194 27.680399999999999 55.360799999999998 76.330799999999996 133.36920000000001 344.74679999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16.776 16.776 50.327999999999996 113.238 197.11799999999999 0 0 0 0 0 180.34199999999998 0 0 0 0 0.59999999999999998 1 1 0.40000000000000002 1.375 27.5 0 838.79999999999995 5.5 0.80000000000000004 0.72999999999999998 2.5000888052378851 4.5 4.0999999999999996 0.80000000000000004 3 3.2000000000141733 4.5999999999999996 20 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_28" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_27" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
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
    <Task key="Task_26" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Ktp_IntestineVascular],Reference=InitialValue"/>
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
    <Task key="Task_25" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_24" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="true">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Wilcock PO">
            <Parameter name="Key" type="key" value="Experiment_5"/>
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
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration"/>
                <Parameter name="Weight" type="unsignedFloat" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mKidneySum],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgFeces],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine],Reference=Value"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="Wilcock IV">
            <Parameter name="Key" type="key" value="Experiment_4"/>
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
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine],Reference=Value"/>
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
    <Task key="Task_22" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_28"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_19" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_17" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_16" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_28"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_29" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_19" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_10" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Feces],Vector=Metabolites[mFeces],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineEnterocytes],Vector=Metabolites[mIntestineEnterocytes],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mIntestineSum],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mKidneySum],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Lung],Vector=Metabolites[mLung],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Compartments[Urine],Vector=Metabolites[mUrine],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[01. StomachLumen  -\> IntestineLumen],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[02. IntestineLumen -\> Feces],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.2. IntestineLumen -\> IntestineEnterocytes (PMAT OCT3)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.3. IntestineEnterocytes -\> IntestineVascular (OCT1)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.6. IntestineLumen -\> IntestineEnterocytes (Diffusion)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[04. PlasmaArterial -\> PortalVein],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.1. PlasmaArterial -\> Stomach],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[05.2. Stomach -\> PortalVein],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.1. PlasmaArterial -\> Liver],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.2. PortalVein -\> Liver],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[06.3. Liver -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.1. PlasmaVenous -\> Lung],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[07.2. Lung -\> PlasmaArterial],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.1. PlasmaArterial -\> Brain],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[08.2. Brain -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.1. PlasmaArterial -\> Muscle],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.1. PlasmaArterial -\> Adipose],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.1. PlasmaArterial -\> Heart],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[11.2. Heart -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.1. PlasmaArterial -\> Remainder],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.3. KidneyPlasma -\> KidneyTubular],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgAdipose],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgBrain],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgFeces],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgHeart],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineEnterocytes],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineLumen],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineTotal],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgIntestineVascular],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyPlasma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTissues],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTotal],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgKidneyTubular],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLiver],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgLung],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgMuscle],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaArterial],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPlasmaVenous],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgPortalVein],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgRemainder],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomach],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgStomachLumen],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[mgUrine],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_2" associatedEntityKey="Task_27" objectCN="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Body Weight],Reference=InitialValue" objectType="float" objectValue="27.5" minValue="2.75" maxValue="275" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_3" associatedEntityKey="Task_27" objectCN="CN=Root,Model=PBPK model of metformin in mice: single dose peroral,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue" objectType="float" objectValue="1.375" minValue="0.1375" maxValue="13.75" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-26T13:16:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
