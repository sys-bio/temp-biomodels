<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.33 (Build 246) (http://www.copasi.org) at 2021-07-20T08:20:17Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="33" versionDevel="246" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
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
    <Function key="Function_40" name="Rate Law for reaction" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        bH + k1*D*M
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="bH" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="D" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="M" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for reaction_6" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k5*C*N + alpha*N
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="k5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="C" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_265" name="N" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="alpha" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for reaction_4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        bm + k3*D*M
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="bm" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="k3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="D" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="M" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice" simulationType="time" timeUnit="7*d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C120876"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C75482"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:10090"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:25013809"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-07-01T12:32:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sheriff@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Sheriff</vCard:Family>
            <vCard:Given>Rahuman</vCard:Given>
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
        <vCard:EMAIL>magomez-ibis@us.es</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Gomez</vCard:Family>
            <vCard:Given>Maria</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Universidad de Sevilla</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>emiliachen1@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Chen</vCard:Family>
            <vCard:Given>Emilia</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Cambridge</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>hina.hrk@outlook.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Hazrat Khan</vCard:Family>
            <vCard:Given>Hina</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Karachi</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>lea.lepoder@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Le Poder</vCard:Family>
            <vCard:Given>Lea</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Aix-Marseille Université and CEA institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>yibo.zhao.18@ucl.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Zhao</vCard:Family>
            <vCard:Given>Yibo</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University College London</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>erin.lloyd@reseearch.uwa.edu.au</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>M Lloyd</vCard:Family>
            <vCard:Given>Erin</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Western Australia, Perth</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kramachandran@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kausthubh</vCard:Family>
            <vCard:Given>Ramachandran</vCard:Given>
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
        <vCard:EMAIL>martin.proks@sund.ku.dk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Proks</vCard:Family>
            <vCard:Given>Martin</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Copenhagen</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>ktiwari@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Tiwari</vCard:Family>
            <vCard:Given>Krishna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:omit:0018341"/>
    <CopasiMT:is rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C17930"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C33558"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Duchenne muscular dystrophy (DMD) is a genetic disease that results in the death of affected boys by early adulthood.The genetic defect responsible for DMD has been known for over 25 years, yet at present there is neither cure nor effective treatment for DMD. During early disease onset, the mdx mouse has been validated as an animal model for DMD and use of this model has led to valuable but incomplete insights into the disease process. For example, immune cells are thought to be responsible for a significant portion of muscle cell death in the mdx mouse; however, the role and time course of the immune response in the dystrophic process have not been well described. In this paper we constructed a simple mathematical model to investigate the role of the immune response in muscle degeneration and subsequent regeneration in the mdx mouse model of Duchenne muscular dystrophy. Our model suggests that the immune response contributes substantially to the muscle degeneration and regeneration processes. Furthermore, the analysis of the model predicts that the immune system response oscillates throughout the life of the mice, and the damaged fibers are never completely cleared.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Skeletal_muscle" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C13050" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="CD4+_T_Helper_cells_(H)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000492"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Damaged_fibres_(D)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C61555" />
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000888" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Macrophages_(M)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is rdf:resource="urn:miriam:omit:0009339"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="CD8+_cytotoxic_T_lymphocytes_(C)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000794"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Normal_fibres_(N)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000888"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Regenerative_fibres_(R)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17083" />
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000888" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="bH" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dH],Reference=Value>*&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[H0],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="bC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dC],Reference=Value>*&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[C0],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="bM" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dM],Reference=Value>*&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[M0],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="dH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="dC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="dM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="dD" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="H0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="C0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="M0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="sigma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="m" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="alpha" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[h],Reference=Value>/((&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time>+1e-11)*&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[sigma],Reference=Value>*(2*pi)^0.5)*exp(-((log(&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time>+1e-11)-&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[m],Reference=Value>)^2)/(2*&lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[sigma],Reference=Value>^2))
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="T_helper_cells_creation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C42620"/>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000492"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5375" name="k1" value="0.0324139"/>
          <Constant key="Parameter_5374" name="bH" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="T_helper_cells_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C61559"/>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000492"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5373" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="T_lymphocytes_creation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C42620"/>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000794"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5372" name="k1" value="0.115375"/>
          <Constant key="Parameter_5371" name="bH" value="6.46044"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="T_lymphocytes_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C61559"/>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000794"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="k1" value="1.61511"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Macrophage_creation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C42620"/>
    <CopasiMT:is rdf:resource="urn:miriam:omit:0009339"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5369" name="k3" value="0.766576"/>
          <Constant key="Parameter_5368" name="bm" value="312.462"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Macrophage_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C61559"/>
    <CopasiMT:is rdf:resource="urn:miriam:omit:0009339"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5367" name="k1" value="0.781155"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Fibre_damage" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C61555"/>
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000888"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="alpha" value="9.15038e-47"/>
          <Constant key="Parameter_5365" name="k5" value="0.00409948"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Fibre_regeneration" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17083"/>
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000888"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5689" name="alpha" value="1.34671"/>
          <Constant key="Parameter_5690" name="k5" value="0.000323097"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Fibre_normalisation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000888"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5688" name="k1" value="0.123848"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
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
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[CD4+_T_Helper_cells_(H)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Damaged_fibres_(D)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Macrophages_(M)]" value="2.4088563427999999e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[CD8+_cytotoxic_T_lymphocytes_(C)]" value="2.4088563428000001e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Normal_fibres_(N)]" value="6.0221408569999997e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Regenerative_fibres_(R)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k1]" value="0.034099999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k2]" value="0.11537500000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k3]" value="0.76657600000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k4]" value="0.123848" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k5]" value="0.00409948" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k6]" value="0.000323097" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bH]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bC]" value="6.4604400000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bM]" value="312.46199999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dH]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dC]" value="1.61511" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dM]" value="0.78115500000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dD]" value="1.3467100000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[H0]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[C0]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[M0]" value="400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[sigma]" value="2.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[m]" value="4.2268600000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[h]" value="0.51165700000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[alpha]" value="5.9851727178265853e-30" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_helper_cells_creation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_helper_cells_creation],ParameterGroup=Parameters,Parameter=k1" value="0.034099999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_helper_cells_creation],ParameterGroup=Parameters,Parameter=bH" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_helper_cells_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_helper_cells_degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_lymphocytes_creation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_lymphocytes_creation],ParameterGroup=Parameters,Parameter=k1" value="0.11537500000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_lymphocytes_creation],ParameterGroup=Parameters,Parameter=bH" value="6.4604400000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_lymphocytes_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[T_lymphocytes_degradation],ParameterGroup=Parameters,Parameter=k1" value="1.61511" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Macrophage_creation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Macrophage_creation],ParameterGroup=Parameters,Parameter=k3" value="0.76657600000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Macrophage_creation],ParameterGroup=Parameters,Parameter=bm" value="312.46199999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Macrophage_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Macrophage_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.78115500000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_damage]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_damage],ParameterGroup=Parameters,Parameter=alpha" value="5.9851727178265853e-30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_damage],ParameterGroup=Parameters,Parameter=k5" value="0.00409948" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_regeneration]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_regeneration],ParameterGroup=Parameters,Parameter=alpha" value="1.3467100000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_regeneration],ParameterGroup=Parameters,Parameter=k5" value="0.000323097" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_normalisation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Reactions[Fibre_normalisation],ParameterGroup=Parameters,Parameter=k1" value="0.123848" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 2.4088563427999999e+26 2.4088563428000001e+24 6.0221408569999997e+25 0 0 6.4604400000000002 312.46199999999999 5.9851727178265853e-30 1 0.034099999999999998 0.11537500000000001 0.76657600000000004 0.123848 0.00409948 0.000323097 1 1.61511 0.78115500000000004 1.3467100000000001 0 4 400 2.2000000000000002 4.2268600000000003 0.51165700000000003 
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
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1500"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="15"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
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
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
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
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
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
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="CD8+ cytotoxic T lymphocytes" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[C]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[CD8+_cytotoxic_T_lymphocytes_(C)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Damaged fibres" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[D]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Damaged_fibres_(D)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="CD4+ T Helper Cells" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[H]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[CD4+_T_Helper_cells_(H)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Macrophages" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[M]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Macrophages_(M)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Normal fibres" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[N]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Normal_fibres_(N)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Regenerative fibres" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[R]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Regenerative_fibres_(R)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CD4+_T_Helper_cells]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[CD4+_T_Helper_cells_(H)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Damaged_fibres]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Damaged_fibres_(D)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Macrophages]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Macrophages_(M)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CD8+_cytotoxic_T_lymphocytes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[CD8+_cytotoxic_T_lymphocytes_(C)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Normal_fibres]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Normal_fibres_(N)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Regenerative_fibres]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Compartments[Skeletal_muscle],Vector=Metabolites[Regenerative_fibres_(R)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[bH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bH],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[bC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bC],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[bM]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[bM],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[alpha]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[alpha],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dD],Reference=InitialValue" objectType="float" objectValue="1.34671" minValue="0.134671" maxValue="13.4671" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_1" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dM],Reference=InitialValue" objectType="float" objectValue="0.781155" minValue="0.0781155" maxValue="7.81155" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_2" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice,Vector=Values[dH],Reference=InitialValue" objectType="float" objectValue="1" minValue="0.083355" maxValue="8.3355" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="summerschool.xml">
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="C0" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="H" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="H0" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="M" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="M0" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="N" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_4" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_6" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="bC" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="bH" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="bM" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="dC" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="dD" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="dH" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="dM" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="h" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="m" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="reaction" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="sigma" COPASIkey="ModelValue_16"/>
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
    <UnitDefinition key="Unit_69" name="day" symbol="d">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
