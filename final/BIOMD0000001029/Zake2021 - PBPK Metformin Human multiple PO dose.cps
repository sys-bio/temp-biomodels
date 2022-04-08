<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-10-31T16:12:15Z -->
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
  <Model key="Model_0" name="PBPK model of metformin in humans, eight PO administrations with 12h interval" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="stochastic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-04-26T09:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Zaharenko</vCard:Family>
            <vCard:Given>Linda</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Latvian Biomedical Research and Study Centre</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
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
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Komasilovs</vCard:Family>
            <vCard:Given>Vitalijs</vCard:Given>
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
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Klovins</vCard:Family>
            <vCard:Given>Janis</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Latvian Biomedical Research and Study Centre</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This model is supplementary material of publication "Physiologically based metformin pharmacokinetics model of mice and scale-up to humans for the estimation of concentrations in various tissues"
by Darta Maija Zake, Linda Zaharenko, JanisKurlovics, Vitalijs Komasilovs, Egils Stalidzans and Janis Klovins.


This is a whole-body model representing the pharmacokinetics of metformin in the human body. The model is in the form of Ordinary differential equations and describes metformin concentration in 21 compartments. 

The model consists of 21 compartments (“compartments” in COPASI model) describing various tissues or tissue sub-compartments and body fluids of metformin action (venous and arterial plasma, red blood cells, intestine, kidney, heart, fat, muscle, brain, lungs, stomach, liver, portal vein, remainder, urine and feces). Body weight and the weight of all compartments is expressed as a volume in mL and for the calculations it is assumed that 1mL = 1g. The volumes of most compartments are calculated as a fraction of the body weight/volume, and the fractions are determined from literature data, the volumes of the stomach lumen and intestine lumen are fixed and do not change depending on the body weight.  Similarly, the volume of external urine and feces is set to 1L, but those are “volumeless” compartments as they are only necessary for the calculation of metformin amount, not concentration. 


The model consists of 21 species (“species” in COPASI model) that correspond to the metformin concentrations in the 21 compartments. The initial concentrations for all the species are 0 nmol/mL as metformin is not produced in the body and can only be detected after dose administration. 


The model consists of 35 reactions – they describe the transport processes of metformin in the body. The reactions include local parameters that are involved only in that particular reaction and global parameters – parameters that are used in multiple reactions or are calculated depending on another parameter e.g. scale-up coefficients. 


The model consists of 62 global quantities – parameters involved in multiple reactions or necessary for another parameter calculation:

1.Parameters describing peroral metformin dose (Metformin Dose in Lumen in mg).

2.Parameter describing human physiology – body weight (in mL), cardiac output, blood flow to different compartments described as Q”compartment_name” (for example Qliver describes blood flow to the liver compartment). Qgfr refers to the glomerular filtration rate. 

3.Parameters involved in the scale-up of the model
•Tissue:plasma partition coefficients (Ktp) that were estimated in the mice model.
•Kidney coefficient that is used for the scale-up of metformin elimination and is involved in the calculation of the rate parameters in the reactions “13.4. KidneyPlasma -> KidneyTissue” and “13.5. KidneyTissue -> KidneyTubular”. This parameter was determined using parameter estimation. 
•Intestine coefficient that is involved in the calculation of the intestinal reaction rates of the reactions (03.2. IntestineLumen -> Enterocytes (PMAT OCT3),  03.3. Enterocytes -> IntestineVascular (OCT1), 03.4. IntestineLumen -> IntestineVascular (Saturable), 03.6. IntestineLumen -> Enterocytes (Diffusion) ,  03.7. IntestineLumen -> IntestineVascular (Diffusion)). The parmaeters for these reactions are taken from Proctor publication and the intectine coefficient is used for the scale-up from the cell-culture to the human intestine. 

4.Parameters involved in the calculation of metformin amount in mg, these parameters are named mg”Compartment_name” (for example mgLiver describes the metformin amount in mg in the liver tissues). 



The time points of dose release are defined as “events” in COPASI and can be changed as necessary. The current model has 14 events and is set for a multiple-dose regimen for 7-day long twice-daily metformin administration. 

Time course simulations can be accessed through the section “Time Course” in this section the time duration and intervals can be changed. When time-course simulations are run three plots are created – Metformin amount in the 21 compartments, metformin concentrations in the compartments and reaction fluxes of all the reactions (see “Output Specifications” -> “Plots” to activate or deactivate plots). The time-course also includes multiple "Sliders" that allow to easily change 3 parameters - "Body Weight", "Cardiac Output", "Metformin Dose in Lumen in mg".
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="IntestineLumen" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:25:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          the small intestine volume is compromised of 280 mL of stmach contents (juice + water administerd with dose) + 120 mL of small intestine gastric juice
        </Comment>
      </Compartment>
      <Compartment key="Compartment_1" name="Liver" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0257
        </Expression>
      </Compartment>
      <Compartment key="Compartment_2" name="KidneyPlasma" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.00146
        </Expression>
      </Compartment>
      <Compartment key="Compartment_3" name="Remainder" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.233
        </Expression>
      </Compartment>
      <Compartment key="Compartment_4" name="PlasmaVenous" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-29T13:25:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0321
        </Expression>
      </Compartment>
      <Compartment key="Compartment_5" name="Urine" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:06:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_6" name="Feces" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:06:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_7" name="Heart" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:43:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.005
        </Expression>
      </Compartment>
      <Compartment key="Compartment_8" name="Muscle" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:44:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.4
        </Expression>
      </Compartment>
      <Compartment key="Compartment_9" name="Brain" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:43:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.02
        </Expression>
      </Compartment>
      <Compartment key="Compartment_10" name="Adipose" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T14:53:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.215
        </Expression>
      </Compartment>
      <Compartment key="Compartment_11" name="PlasmaArterial" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:32:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0107
        </Expression>
      </Compartment>
      <Compartment key="Compartment_12" name="Lung" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0076
        </Expression>
      </Compartment>
      <Compartment key="Compartment_13" name="PortalVein" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:29:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0028
        </Expression>
      </Compartment>
      <Compartment key="Compartment_14" name="Stomach" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:37:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0021
        </Expression>
      </Compartment>
      <Compartment key="Compartment_15" name="Enterocytes" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:09:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0012
        </Expression>
      </Compartment>
      <Compartment key="Compartment_16" name="KidneyTissue" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:35:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.00146
        </Expression>
      </Compartment>
      <Compartment key="Compartment_17" name="IntestineVascular" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T15:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.009
        </Expression>
      </Compartment>
      <Compartment key="Compartment_18" name="StomachLumen" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:09:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Stomach lumen volume is compromised of 40mL stomach juice + 240mL of water that is administered with the metformin dose
        </Comment>
      </Compartment>
      <Compartment key="Compartment_19" name="RBC" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T10:04:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.0314
        </Expression>
      </Compartment>
      <Compartment key="Compartment_20" name="KidneyTubular" simulationType="assignment" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T10:55:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue>*0.00146
        </Expression>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="mLiver" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T11:19:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="mKidneyPlasma" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-04T18:27:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="mRemainder" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T15:45:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="mPlasmaVenous" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="mHeart" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="mMuscle" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T15:45:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="mAdipose" simulationType="reactions" compartment="Compartment_10" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="mBrain" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:25:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="mFeces" simulationType="reactions" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:34:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="mUrineExternal" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:39:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="mIntestineLumen" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-28T09:04:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="mPlasmaArterial" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:42:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="mLung" simulationType="reactions" compartment="Compartment_12" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:55:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="mPortalVein" simulationType="reactions" compartment="Compartment_13" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:00:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="mStomach" simulationType="reactions" compartment="Compartment_14" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:42:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="mEnterocytes" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:10:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="mKidneyTissue" simulationType="reactions" compartment="Compartment_16" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:57:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="mIntestineVascular" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T15:38:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="mStomachLumen" simulationType="reactions" compartment="Compartment_18" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:12:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="mRBC" simulationType="reactions" compartment="Compartment_19" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T10:07:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="mKidneyTubular" simulationType="reactions" compartment="Compartment_20" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
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
      <ModelValue key="ModelValue_2" name="Cardiac Output" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
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
      <ModelValue key="ModelValue_3" name="Ktp_Liver" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Ktp_Brain" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:22:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Ktp_Adipose" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Ktp_Heart" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:39:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Ktp_Kidney" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:23:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Ktp_Muscle" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Ktp_Remainder" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T23:55:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="QAdipose" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:46:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.052
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="QBrain" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:47:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.114
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="QHeart" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:45:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.04
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="QKidney" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:45:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.175
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="QMuscle" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:47:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.191
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="QRemainder" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-01T10:48:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.201
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="mgLiver" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:17:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Liver],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="mgIntestineLumen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:22:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="mgBrain" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:23:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Brain],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="mgAdipose" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:24:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Adipose],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="mgHeart" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:25:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Heart],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="mgKidneyPlasma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:26:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="mgRemainder" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:27:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Remainder],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="mgMuscle" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:28:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Muscle],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="mgPortalVein" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-14T11:42:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PortalVein],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="mgUrineSum" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:40:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Urine],Vector=Metabolites[mUrineExternal],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Urine],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="mgFeces" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T08:41:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Feces],Vector=Metabolites[mFeces],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Feces],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="mgEnterocytes" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-28T09:22:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes],Vector=Metabolites[mEnterocytes],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Ktp_Lung" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T09:59:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="mgVenousPlasma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:56:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaVenous],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="mgArterialPlasma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:58:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaArterial],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="mgLung" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T14:14:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Lung],Vector=Metabolites[mLung],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Lung],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="mgStomach" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T11:22:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Stomach],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="QLiverArtery" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:42:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.046
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="QStomach" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:43:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.011
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="QPortalVein" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:44:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.064
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="QIntestineVascular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-30T09:44:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>*0.106
        </Expression>
        <Unit>
          ml/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="QLiverOut" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-04T11:44:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QPortalVeinOut],Reference=InitialValue>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QLiverArtery],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Ktp_Stomach" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-07T19:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Ktp_IntestineVascular" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-08T05:04:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="mIntestineTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:24:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes],Vector=Metabolites[mEnterocytes],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration>)/(&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular],Reference=InitialVolume>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Qgfr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:38:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="mKidneyTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T11:13:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration>)/(&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue],Reference=InitialVolume>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular],Reference=InitialVolume>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="mgKidneyTissues" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T11:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="mgIntestineVascular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T16:02:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="mgStomachLumen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:28:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="QPortalVeinOut" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-05T18:04:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QStomach],Reference=InitialValue>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QPortalVein],Reference=InitialValue>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QIntestineVascular],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="mArterialPlasma (kidney)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-06T11:06:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="mgKidneyTubular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T13:11:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular],Reference=InitialVolume>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="mgRBC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T13:30:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[RBC],Vector=Metabolites[mRBC],Reference=Concentration>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[RBC],Reference=InitialVolume>/1000000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="03.2. IntestineLumen -> Enterocytes (PMAT OCT3) Vf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-08T09:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Intestine Coefficient],Reference=InitialValue>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[IntestineSurffaceCoefficient],Reference=InitialValue>*1271
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="03.3. Enterocytes -> IntestineVascular (OCT1) Vmax" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-08T09:26:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Intestine Coefficient],Reference=InitialValue>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[IntestineSurffaceCoefficient],Reference=InitialValue>*495
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="03.4. IntestineLumen -> IntestineVascular (Saturable)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-17T11:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Intestine Coefficient],Reference=InitialValue>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[IntestineSurffaceCoefficient],Reference=InitialValue>*19.2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="03.6. IntestineLumen -> Enterocytes (Diffusion) Coefficient" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:38:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Intestine Coefficient],Reference=InitialValue>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[IntestineSurffaceCoefficient],Reference=InitialValue>*0.14
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="03.7. IntestineLumen -> IntestineVascular (Diffusion) Coefficient" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:38:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Intestine Coefficient],Reference=InitialValue>*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[IntestineSurffaceCoefficient],Reference=InitialValue>*0.26
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Intestine Coefficient" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-17T11:03:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="Kidney Coefficient" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-17T11:07:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="13.4. KidneyPlasma -> KidneyTissue" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-17T11:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Kidney Coefficient],Reference=InitialValue>*87339
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="13.5. KidneyTissue -> KidneyTubular" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-17T11:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Kidney Coefficient],Reference=InitialValue>*3000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="mgKidneyTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-09-30T11:14:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTubular],Reference=Value>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyPlasma],Reference=Value>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTissues],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="mgIntestineTotal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-09-30T11:15:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgIntestineVascular],Reference=Value>+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgEnterocytes],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="IntestineSurffaceCoefficient" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-29T11:48:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          70/0.032
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="03.5. IntestineVascular -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T19:07:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5905" name="Ktp" value="4.6"/>
          <Constant key="Parameter_5904" name="Q" value="33072"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="06.3. Liver -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-29T19:11:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5908" name="Q" value="70824"/>
          <Constant key="Parameter_5906" name="Ktp" value="5.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="13.2. KidneyPlasma -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:09:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5909" name="Q" value="54600"/>
          <Constant key="Parameter_5910" name="Ktp" value="4.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="09.2. Muscle -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:13:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5914" name="Q" value="59592"/>
          <Constant key="Parameter_5916" name="Ktp" value="4.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="12.2. Remainder -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-30T00:17:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5917" name="Q" value="62712"/>
          <Constant key="Parameter_5911" name="Ktp" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="02. IntestineLumen -> Feces" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-12T06:57:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5913" name="k1" value="650"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5913"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="13.1. PlasmaArterial -> KidneyPlasma" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:23:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5912" name="Q" value="54600"/>
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
      <Reaction key="Reaction_7" name="09.1. PlasmaArterial -> Muscle" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:24:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5915" name="Q" value="59592"/>
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
      <Reaction key="Reaction_8" name="12.1. PlasmaArterial -> Remainder" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-06T10:25:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5918" name="Q" value="62712"/>
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
      <Reaction key="Reaction_9" name="13.3. PlasmaArterial -> KidneyTubular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-20T14:19:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5919" name="Flow" value="5600"/>
          <Constant key="Parameter_5953" name="S" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="06.2. PortalVein -> Liver" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:01:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5954" name="Q" value="56472"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="05.1. PlasmaArterial -> Stomach" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5958" name="Q" value="3432"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
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
      <Reaction key="Reaction_12" name="05.2. Stomach -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-24T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5960" name="Ktp" value="3.2"/>
          <Constant key="Parameter_5961" name="Q" value="3432"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="04. PlasmaArterial -> PortalVein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-28T14:15:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5955" name="Q" value="19968"/>
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
      <Reaction key="Reaction_14" name="03.1. PlasmaArterial -> IntestineVascular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-28T14:18:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5957" name="Q" value="33072"/>
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
      <Reaction key="Reaction_15" name="06.1. PlasmaArterial -> Liver" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-23T13:01:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5956" name="Q" value="14352"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="03.2. IntestineLumen -> Enterocytes (PMAT OCT3)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T17:45:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5959" name="Km" value="900"/>
          <Constant key="Parameter_5962" name="V" value="1.94622e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_5959"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="03.4. IntestineLumen -> IntestineVascular (Saturable)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-02T19:14:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5951" name="Km" value="60"/>
          <Constant key="Parameter_5949" name="V" value="29400"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_5951"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="03.3. Enterocytes -> IntestineVascular (OCT1)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-17T14:36:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5948" name="Km" value="12300"/>
          <Constant key="Parameter_5952" name="V" value="757969"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_5948"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="13.4. KidneyPlasma -> KidneyTissue" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:55:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5950" name="Km" value="1380"/>
          <Constant key="Parameter_5923" name="V" value="2.79485e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_5950"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="13.5. KidneyTissue -> KidneyTubular" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-03T10:58:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5921" name="Km" value="230"/>
          <Constant key="Parameter_5920" name="V" value="960000"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_5921"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="01. StomachLumen  -> IntestineLumen" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T09:10:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5924" name="k1" value="350"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5924"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="07.2. Lung -> PlasmaArterial" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5922" name="Ktp" value="3"/>
          <Constant key="Parameter_5938" name="Q" value="312000"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="07.1. PlasmaVenous -> Lung" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:53:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5939" name="Q" value="312000"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="08.2. Brain -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5926" name="Ktp" value="0.8"/>
          <Constant key="Parameter_5943" name="Q" value="35568"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="08.1. PlasmaArterial -> Brain" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:55:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5929" name="Q" value="35568"/>
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
      <Reaction key="Reaction_26" name="11.2. Heart -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:56:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5945" name="Ktp" value="2.5"/>
          <Constant key="Parameter_5946" name="Q" value="12480"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="11.1. PlasmaArterial -> Heart" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:57:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5940" name="Q" value="12480"/>
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
      <Reaction key="Reaction_28" name="10.2. Adipose -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:57:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5925" name="Ktp" value="0.73"/>
          <Constant key="Parameter_5933" name="Q" value="16224"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="10.1. PlasmaArterial -> Adipose" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T09:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5942" name="Q" value="16224"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="14.1. PlasmaVenous -> RBC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T10:48:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5927" name="k1" value="84"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5927"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="14.2. RBC -> PlasmaVenous" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T10:48:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5941" name="k1" value="96"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5941"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="13.6. KidneyTubular -> UrineExternal" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-25T11:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5932" name="k1" value="70"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5932"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="03.6. IntestineLumen -> Enterocytes (Diffusion)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5936" name="k2" value="214.375"/>
          <Constant key="Parameter_5931" name="k1" value="214.375"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="03.7. IntestineLumen -> IntestineVascular (Diffusion)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-07-09T06:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5935" name="k1" value="398.125"/>
          <Constant key="Parameter_5934" name="k2" value="398.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Dose 0.001h" fireAtInitialTime="1" persistentTrigger="1">
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
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 0.001
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="Dose -12h" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-16T08:38:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 12
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="Dose 24h" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-30T17:24:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 24
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="Dose 36h" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-30T17:24:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 36
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="Dose 48h" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-30T17:25:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 48
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="Dose 60h" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-30T17:25:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 60
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="Dose 72h" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-30T17:25:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 72
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="Dose 84h" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-10-30T17:26:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time> > 84
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" targetKey="Metabolite_18">
            <Expression>
              1000000*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue>/(129.16*&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Reference=InitialVolume>)+&lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-31T16:10:54Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen]" value="500" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Liver]" value="1799" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma]" value="102.19999999999999" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Remainder]" value="16310" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaVenous]" value="2246.9999999999995" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Urine]" value="1000" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Feces]" value="1000" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Heart]" value="350" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Muscle]" value="28000" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Brain]" value="1400" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Adipose]" value="15050" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaArterial]" value="749" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Lung]" value="532" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PortalVein]" value="196" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Stomach]" value="147" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes]" value="83.999999999999986" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue]" value="102.19999999999999" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular]" value="630" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen]" value="350" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[RBC]" value="2198" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular]" value="102.19999999999999" type="Compartment" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Liver],Vector=Metabolites[mLiver]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Heart],Vector=Metabolites[mHeart]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Brain],Vector=Metabolites[mBrain]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Feces],Vector=Metabolites[mFeces]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Urine],Vector=Metabolites[mUrineExternal]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Lung],Vector=Metabolites[mLung]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Stomach],Vector=Metabolites[mStomach]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes],Vector=Metabolites[mEnterocytes]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[RBC],Vector=Metabolites[mRBC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg]" value="389.92000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight]" value="70000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output]" value="312000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Liver]" value="5.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Brain]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Adipose]" value="0.72999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Heart]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Kidney]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Muscle]" value="4.0999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Remainder]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QAdipose]" value="16224" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QBrain]" value="35568" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QHeart]" value="12480" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QKidney]" value="54600" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QMuscle]" value="59592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QRemainder]" value="62712.000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgLiver]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgIntestineLumen]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgBrain]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgAdipose]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgHeart]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyPlasma]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgRemainder]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgMuscle]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgPortalVein]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgUrineSum]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgFeces]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgEnterocytes]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Lung]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgVenousPlasma]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgArterialPlasma]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgLung]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgStomach]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QLiverArtery]" value="14352" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QStomach]" value="3432" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QPortalVein]" value="19968" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QIntestineVascular]" value="33072" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QLiverOut]" value="70824" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Stomach]" value="3.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_IntestineVascular]" value="4.5999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mIntestineTotal]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Qgfr]" value="5600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mKidneyTotal]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTissues]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgIntestineVascular]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgStomachLumen]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QPortalVeinOut]" value="56472" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mArterialPlasma (kidney)]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTubular]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgRBC]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.2. IntestineLumen -\> Enterocytes (PMAT OCT3) Vf]" value="1946218.75" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.3. Enterocytes -\> IntestineVascular (OCT1) Vmax]" value="757968.75" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.4. IntestineLumen -\> IntestineVascular (Saturable)]" value="29400" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.6. IntestineLumen -\> Enterocytes (Diffusion) Coefficient]" value="214.37500000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.7. IntestineLumen -\> IntestineVascular (Diffusion) Coefficient]" value="398.125" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Intestine Coefficient]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Kidney Coefficient]" value="320" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[13.4. KidneyPlasma -\> KidneyTissue]" value="27948480" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[13.5. KidneyTissue -\> KidneyTubular]" value="960000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTotal]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgIntestineTotal]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[IntestineSurffaceCoefficient]" value="2187.5" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.5. IntestineVascular -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],ParameterGroup=Parameters,Parameter=Ktp" value="4.5999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_IntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="33072" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QIntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.3. Liver -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.3. Liver -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="70824" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QLiverOut],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.3. Liver -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="5.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Liver],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="54600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QKidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="4.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Kidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[09.2. Muscle -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="59592" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QMuscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Muscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[12.2. Remainder -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="62712.000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QRemainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Remainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[02. IntestineLumen -\> Feces]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[02. IntestineLumen -\> Feces],ParameterGroup=Parameters,Parameter=k1" value="650" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma],ParameterGroup=Parameters,Parameter=Q" value="54600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QKidney],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[09.1. PlasmaArterial -\> Muscle]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[09.1. PlasmaArterial -\> Muscle],ParameterGroup=Parameters,Parameter=Q" value="59592" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QMuscle],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[12.1. PlasmaArterial -\> Remainder]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[12.1. PlasmaArterial -\> Remainder],ParameterGroup=Parameters,Parameter=Q" value="62712.000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QRemainder],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.3. PlasmaArterial -\> KidneyTubular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.3. PlasmaArterial -\> KidneyTubular],ParameterGroup=Parameters,Parameter=Flow" value="5600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Qgfr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.3. PlasmaArterial -\> KidneyTubular],ParameterGroup=Parameters,Parameter=S" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mArterialPlasma (kidney)],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.2. PortalVein -\> Liver]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.2. PortalVein -\> Liver],ParameterGroup=Parameters,Parameter=Q" value="56472" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QPortalVeinOut],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[05.1. PlasmaArterial -\> Stomach]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[05.1. PlasmaArterial -\> Stomach],ParameterGroup=Parameters,Parameter=Q" value="3432" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QStomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[05.2. Stomach -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[05.2. Stomach -\> PortalVein],ParameterGroup=Parameters,Parameter=Ktp" value="3.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Stomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[05.2. Stomach -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="3432" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QStomach],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[04. PlasmaArterial -\> PortalVein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[04. PlasmaArterial -\> PortalVein],ParameterGroup=Parameters,Parameter=Q" value="19968" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QPortalVein],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular],ParameterGroup=Parameters,Parameter=Q" value="33072" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QIntestineVascular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.1. PlasmaArterial -\> Liver]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.1. PlasmaArterial -\> Liver],ParameterGroup=Parameters,Parameter=Q" value="14352" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QLiverArtery],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.2. IntestineLumen -\> Enterocytes (PMAT OCT3)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.2. IntestineLumen -\> Enterocytes (PMAT OCT3)],ParameterGroup=Parameters,Parameter=Km" value="900" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.2. IntestineLumen -\> Enterocytes (PMAT OCT3)],ParameterGroup=Parameters,Parameter=V" value="1946218.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.2. IntestineLumen -\> Enterocytes (PMAT OCT3) Vf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],ParameterGroup=Parameters,Parameter=Km" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],ParameterGroup=Parameters,Parameter=V" value="29400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.4. IntestineLumen -\> IntestineVascular (Saturable)],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.3. Enterocytes -\> IntestineVascular (OCT1)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.3. Enterocytes -\> IntestineVascular (OCT1)],ParameterGroup=Parameters,Parameter=Km" value="12300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.3. Enterocytes -\> IntestineVascular (OCT1)],ParameterGroup=Parameters,Parameter=V" value="757968.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.3. Enterocytes -\> IntestineVascular (OCT1) Vmax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],ParameterGroup=Parameters,Parameter=Km" value="1380" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],ParameterGroup=Parameters,Parameter=V" value="27948480" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[13.4. KidneyPlasma -\> KidneyTissue],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],ParameterGroup=Parameters,Parameter=Km" value="230" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],ParameterGroup=Parameters,Parameter=V" value="960000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[13.5. KidneyTissue -\> KidneyTubular],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[01. StomachLumen  -\> IntestineLumen]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[01. StomachLumen  -\> IntestineLumen],ParameterGroup=Parameters,Parameter=k1" value="350" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[07.2. Lung -\> PlasmaArterial]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[07.2. Lung -\> PlasmaArterial],ParameterGroup=Parameters,Parameter=Ktp" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Lung],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[07.2. Lung -\> PlasmaArterial],ParameterGroup=Parameters,Parameter=Q" value="312000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[07.1. PlasmaVenous -\> Lung]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[07.1. PlasmaVenous -\> Lung],ParameterGroup=Parameters,Parameter=Q" value="312000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[08.2. Brain -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[08.2. Brain -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Brain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[08.2. Brain -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="35568" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QBrain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[08.1. PlasmaArterial -\> Brain]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[08.1. PlasmaArterial -\> Brain],ParameterGroup=Parameters,Parameter=Q" value="35568" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QBrain],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[11.2. Heart -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[11.2. Heart -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Heart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[11.2. Heart -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="12480" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QHeart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[11.1. PlasmaArterial -\> Heart]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[11.1. PlasmaArterial -\> Heart],ParameterGroup=Parameters,Parameter=Q" value="12480" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QHeart],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[10.2. Adipose -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Ktp" value="0.72999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Ktp_Adipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=Q" value="16224" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QAdipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[10.1. PlasmaArterial -\> Adipose]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[10.1. PlasmaArterial -\> Adipose],ParameterGroup=Parameters,Parameter=Q" value="16224" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[QAdipose],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[14.1. PlasmaVenous -\> RBC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[14.1. PlasmaVenous -\> RBC],ParameterGroup=Parameters,Parameter=k1" value="84" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[14.2. RBC -\> PlasmaVenous]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[14.2. RBC -\> PlasmaVenous],ParameterGroup=Parameters,Parameter=k1" value="96" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal],ParameterGroup=Parameters,Parameter=k1" value="70" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.6. IntestineLumen -\> Enterocytes (Diffusion)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.6. IntestineLumen -\> Enterocytes (Diffusion)],ParameterGroup=Parameters,Parameter=k2" value="214.37500000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.6. IntestineLumen -\> Enterocytes (Diffusion) Coefficient],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.6. IntestineLumen -\> Enterocytes (Diffusion)],ParameterGroup=Parameters,Parameter=k1" value="214.37500000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.6. IntestineLumen -\> Enterocytes (Diffusion) Coefficient],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],ParameterGroup=Parameters,Parameter=k1" value="398.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.7. IntestineLumen -\> IntestineVascular (Diffusion) Coefficient],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],ParameterGroup=Parameters,Parameter=k2" value="398.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[03.7. IntestineLumen -\> IntestineVascular (Diffusion) Coefficient],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
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
      <StateTemplateVariable objectReference="Compartment_20"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
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
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
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
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1799 102.19999999999999 16310 2246.9999999999995 350 28000 1400 15050 749 532 196 147 83.999999999999986 102.19999999999999 630 2198 102.19999999999999 16224 35568 12480 54600 59592 62712.000000000007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14352 3432 19968 33072 70824 0 0 0 0 0 56472 0 0 0 1946218.75 757968.75 29400 214.37500000000003 398.125 27948480 960000 0 0 2187.5 500 1000 1000 350 389.92000000000002 70000 312000 5.5 0.80000000000000004 0.72999999999999998 2.5 4.5 4.0999999999999996 0.80000000000000004 3 3.2000000000000002 4.5999999999999996 5600 0.69999999999999996 320 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="20000"/>
        <Parameter name="StepSize" type="float" value="0.0050000000000000001"/>
        <Parameter name="Duration" type="float" value="100"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="-12"/>
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
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="4"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[01. StomachLumen  -\> IntestineLumen],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="Minimum" type="float" value="200"/>
            <Parameter name="Maximum" type="float" value="600"/>
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
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="true">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="200000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="500"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Iterations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_4" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_3" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_2" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_1" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_14" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Metformin amount, mg" type="Plot2D" active="1" taskTypes="">
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgAdipose],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgArterialPlasma" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgArterialPlasma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgBrain],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgEnterocytes" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgEnterocytes],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgFeces],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgHeart],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgIntestineLumen],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgIntestineTotal],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgIntestineVascular],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgKidenyTubular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTubular],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyPlasma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTissues],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgKidneyTotal],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgLiver],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgLung],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgMuscle],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgPortalVein],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgRBC" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgRBC],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgRemainder],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgStomach],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgStomachLumen],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgUrineSum" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgUrineSum],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mgVenousPlasma" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mgVenousPlasma],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Metformin concentrations, nmol/mL" type="Plot2D" active="1" taskTypes="">
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Adipose],Vector=Metabolites[mAdipose],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Brain],Vector=Metabolites[mBrain],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mEnterocytes" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Enterocytes],Vector=Metabolites[mEnterocytes],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Feces],Vector=Metabolites[mFeces],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Heart],Vector=Metabolites[mHeart],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineLumen],Vector=Metabolites[mIntestineLumen],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mIntestineTotal],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[IntestineVascular],Vector=Metabolites[mIntestineVascular],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyPlasma],Vector=Metabolites[mKidneyPlasma],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[mKidneyTotal],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTissue],Vector=Metabolites[mKidneyTissue],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[KidneyTubular],Vector=Metabolites[mKidneyTubular],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Liver],Vector=Metabolites[mLiver],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Lung],Vector=Metabolites[mLung],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Muscle],Vector=Metabolites[mMuscle],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaArterial],Vector=Metabolites[mPlasmaArterial],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PlasmaVenous],Vector=Metabolites[mPlasmaVenous],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[PortalVein],Vector=Metabolites[mPortalVein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mRBC" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[RBC],Vector=Metabolites[mRBC],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Remainder],Vector=Metabolites[mRemainder],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Stomach],Vector=Metabolites[mStomach],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[StomachLumen],Vector=Metabolites[mStomachLumen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mUrineExternal" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Compartments[Urine],Vector=Metabolites[mUrineExternal],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fluxes of reactions" type="Plot2D" active="1" taskTypes="">
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[01. StomachLumen  -\> IntestineLumen],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[02. IntestineLumen -\> Feces],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.1. PlasmaArterial -\> IntestineVascular],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.2. IntestineLumen -> Enterocytes (PMAT OCT3)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.2. IntestineLumen -\> Enterocytes (PMAT OCT3)],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.3. Enterocytes -> IntestineVascular (OCT1)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.3. Enterocytes -\> IntestineVascular (OCT1)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.4. IntestineLumen -\> IntestineVascular (Saturable)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.5. IntestineVascular -\> PortalVein],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="03.6. IntestineLumen -> Enterocytes (Diffusion)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.6. IntestineLumen -\> Enterocytes (Diffusion)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[03.7. IntestineLumen -\> IntestineVascular (Diffusion)],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[04. PlasmaArterial -\> PortalVein],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[05.1. PlasmaArterial -\> Stomach],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[05.2. Stomach -\> PortalVein],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.1. PlasmaArterial -\> Liver],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.2. PortalVein -\> Liver],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[06.3. Liver -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[07.1. PlasmaVenous -\> Lung],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[07.2. Lung -\> PlasmaArterial],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[08.1. PlasmaArterial -\> Brain],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[08.2. Brain -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[09.1. PlasmaArterial -\> Muscle],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[09.2. Muscle -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[10.1. PlasmaArterial -\> Adipose],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[10.2. Adipose -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[11.1. PlasmaArterial -\> Heart],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="11.2. Heart ->PlaV" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[11.2. Heart -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[12.1. PlasmaArterial -\> Remainder],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[12.2. Remainder -\> PlasmaVenous],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.1. PlasmaArterial -\> KidneyPlasma],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.2. KidneyPlasma -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.2. KidneyPlasma -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="13.3. PlasmaArterial -> KidneyTubular" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.3. PlasmaArterial -\> KidneyTubular],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.4. KidneyPlasma -\> KidneyTissue],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.5. KidneyTissue -\> KidneyTubular],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[13.6. KidneyTubular -\> UrineExternal],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="14.1. PlasmaVenous -> RBC" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[14.1. PlasmaVenous -\> RBC],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="14.2. RBC -> PlasmaVenous" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Reactions[14.2. RBC -\> PlasmaVenous],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_11" objectCN="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue" objectType="float" objectValue="70000" minValue="7000" maxValue="700000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_1" associatedEntityKey="Task_11" objectCN="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue" objectType="float" objectValue="312000" minValue="31200" maxValue="3.12e+06" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_2" associatedEntityKey="Task_11" objectCN="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Qgfr],Reference=InitialValue" objectType="float" objectValue="5600" minValue="560" maxValue="56000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_3" associatedEntityKey="Task_12" objectCN="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Body Weight],Reference=InitialValue" objectType="float" objectValue="70000" minValue="7000" maxValue="700000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_4" associatedEntityKey="Task_12" objectCN="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Cardiac Output],Reference=InitialValue" objectType="float" objectValue="312000" minValue="31200" maxValue="3.12e+06" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_5" associatedEntityKey="Task_12" objectCN="CN=Root,Model=PBPK model of metformin in humans\, eight PO administrations with 12h interval,Vector=Values[Metformin Dose in Lumen in mg],Reference=InitialValue" objectType="float" objectValue="389.92" minValue="38.992" maxValue="3899.2" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-31T16:10:42Z</dcterms:W3CDTF>
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
