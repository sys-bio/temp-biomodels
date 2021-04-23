<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-09-09 08:02:41 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
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
    <Function key="Function_40" name="Function_for_Tumor_Growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T14:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r*T*(1-T/K)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="T" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_262" name="K" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function_for_Tumor_Elimination_CTL" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T14:47:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((a_T*M1)/(M1+e_T))*((C*T)/(h_T+T))*(a_T_beta+(e_T_beta*(1-a_T_beta))/(F_beta+e_T_beta))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="a_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="e_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="C" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="T" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="h_T" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="a_T_beta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="e_T_beta" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="F_beta" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function_for_CTL_Recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:00:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((a_C_M2*M2*T)/(M2*T+e_C_M2))*(a_C_beta+(e_C_beta*(1-a_C_beta))/(F_beta+e_C_beta))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="a_C_M2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="M2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="T" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="e_C_M2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="a_C_beta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="e_C_beta" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="F_beta" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function_for_F_beta_Tumor_Production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:13:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a_B_T*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="a_B_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="T" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function_for_F_gamma_CTL_Production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:32:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a_gamma_C*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="a_gamma_C" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="C" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C15351"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17823798"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T13:59:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>johannes.p.meyer@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Meyer</vCard:Family>
            <vCard:Given>Johannes</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This mathematical model describes interactions between glioma tumors and the immune system that may occur following direct intra-tumoral administration of ex-vivo activated alloreactive cytotoxic-T-lymphocytes (aCTLs) as part of adoptive immunotherapy. The model includes descriptions of aCTL, neoplastic cells, MHC class I and II molecules, TGF-beta and IFN-gamma.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T15:39:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94498" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="T" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T09:54:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0001063" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="C" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T09:54:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000910" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="F_beta" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T09:54:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20455" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="F_gamma" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:22:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q14609" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="M1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T10:59:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042612" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="M2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T14:30:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042613" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T16:04:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="K" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="a_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T16:53:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="e_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="a_T_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="e_T_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="h_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T14:05:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="a_C_M2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T16:05:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="e_C_M2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="a_C_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="e_C_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="mu_C" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="g_beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T13:38:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="a_beta_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="mu_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="a_gamma_C" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="mu_gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T14:10:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="g_M1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="a_M1_gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:13:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="e_M1_gamma" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="mu_M1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="a_M2_gamma" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="e_M2_gamma" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="a_M2_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="e_M2_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="mu_M2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="S" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T09:48:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_1],Reference=Value>+&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_2],Reference=Value>+&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_3],Reference=Value>+&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_4],Reference=Value>+&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_5],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="T_e9" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T16:05:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>/1e8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="S_dose" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T10:02:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="C_e7" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T10:19:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[C],Reference=Concentration>/1e7
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="S_interval" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T11:41:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="S_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T12:01:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 ge 0 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 le &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue> and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> > 1440 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> &lt; 1800,&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_dose],Reference=InitialValue>/&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue>,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="S_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T12:01:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 ge 0 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 le &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue> and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> > 2880 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> &lt; 3240,&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_dose],Reference=InitialValue>/&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue>,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="S_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T09:48:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 ge 0 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 le &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue> and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> &lt; 360,&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_dose],Reference=Value>/&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue>,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="S_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T12:01:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 ge 0 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 le &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue> and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> > 4320 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> &lt; 4680,&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_dose],Reference=InitialValue>/&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue>,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="S_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-06T12:01:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 ge 0 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time>%120 le &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue> and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> > 5760 and &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time> &lt; 6120,&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_dose],Reference=InitialValue>/&lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval],Reference=InitialValue>,0)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Tumor_Growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T14:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5023" name="r" value="0.00035"/>
          <Constant key="Parameter_5022" name="K" value="1e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Tumor_Elimination_CTL" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T14:47:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002419" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5021" name="a_T" value="0.12"/>
          <Constant key="Parameter_5020" name="e_T" value="50"/>
          <Constant key="Parameter_5019" name="h_T" value="5e+08"/>
          <Constant key="Parameter_5018" name="a_T_beta" value="0.69"/>
          <Constant key="Parameter_5017" name="e_T_beta" value="10000"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="CTL_Recruitment" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T14:57:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035698" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5016" name="a_C_M2" value="4.8e-11"/>
          <Constant key="Parameter_5015" name="e_C_M2" value="1e+14"/>
          <Constant key="Parameter_5014" name="a_C_beta" value="0.8"/>
          <Constant key="Parameter_5013" name="e_C_beta" value="10000"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="CTL_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="k1" value="0.007"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="CTL_Infusion" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:06:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C15351" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="v" value="3e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="F_beta_Basal_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:11:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C80450" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5010" name="v" value="63945"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="F_beta_Tumor_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:13:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C36662" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="a_B_T" value="0.69"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="F_beta_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:22:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="k1" value="7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="F_gamma_CTL_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0032609" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="a_gamma_C" value="0.000102"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="F_gamma_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:33:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k1" value="0.102"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="M1_Receptor_Expression_Basal" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:34:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C80450" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="v" value="1.44"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="M1_Expression_Stimulated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:35:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C80450" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="v" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_5004"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="M1_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:44:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="0.0144"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="M2_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:51:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C80450" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="v" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_5002"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="M2_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T15:57:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:degradation" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="0.0144"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_25"/>
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
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[T]" value="6.0221408570000002e+30" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[C]" value="1.2044281714000001e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[F_beta]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[F_gamma]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[M1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Compartments[compartment],Vector=Metabolites[M2]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[r]" value="0.00035" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[K]" value="100000000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_T]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_T]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_T_beta]" value="0.68999999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_T_beta]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[h_T]" value="500000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_C_M2]" value="4.8000000000000002e-11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_C_M2]" value="100000000000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_C_beta]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_C_beta]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_C]" value="0.0070000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[g_beta]" value="63945" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_beta_T]" value="5.75e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_beta]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_gamma_C]" value="0.000102" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_gamma]" value="0.10199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[g_M1]" value="1.4399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_M1_gamma]" value="2.8799999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_M1_gamma]" value="338000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_M1]" value="0.0144" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_M2_gamma]" value="8660" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_M2_gamma]" value="1420" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_M2_beta]" value="0.012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_M2_beta]" value="100000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_M2]" value="0.0144" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S]" value="30000000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[T_e9]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_dose]" value="300000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[C_e7]" value="0.20000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_interval]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_2]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_3]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_1]" value="30000000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_4]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S_5]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=r" value="0.00035" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=K" value="100000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[K],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Elimination_CTL]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Elimination_CTL],ParameterGroup=Parameters,Parameter=a_T" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Elimination_CTL],ParameterGroup=Parameters,Parameter=e_T" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Elimination_CTL],ParameterGroup=Parameters,Parameter=h_T" value="500000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[h_T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Elimination_CTL],ParameterGroup=Parameters,Parameter=a_T_beta" value="0.68999999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_T_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[Tumor_Elimination_CTL],ParameterGroup=Parameters,Parameter=e_T_beta" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_T_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Recruitment],ParameterGroup=Parameters,Parameter=a_C_M2" value="4.8000000000000002e-11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_C_M2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Recruitment],ParameterGroup=Parameters,Parameter=e_C_M2" value="100000000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_C_M2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Recruitment],ParameterGroup=Parameters,Parameter=a_C_beta" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_C_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Recruitment],ParameterGroup=Parameters,Parameter=e_C_beta" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[e_C_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Death],ParameterGroup=Parameters,Parameter=k1" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Infusion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[CTL_Infusion],ParameterGroup=Parameters,Parameter=v" value="30000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[S],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_beta_Basal_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_beta_Basal_Production],ParameterGroup=Parameters,Parameter=v" value="63945" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[g_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_beta_Tumor_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_beta_Tumor_Production],ParameterGroup=Parameters,Parameter=a_B_T" value="0.68999999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_T_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_beta_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_beta_Degradation],ParameterGroup=Parameters,Parameter=k1" value="7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_gamma_CTL_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_gamma_CTL_Production],ParameterGroup=Parameters,Parameter=a_gamma_C" value="0.000102" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[a_gamma_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_gamma_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[F_gamma_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M1_Receptor_Expression_Basal]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M1_Receptor_Expression_Basal],ParameterGroup=Parameters,Parameter=v" value="1.4399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[g_M1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M1_Expression_Stimulated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M1_Expression_Stimulated],ParameterGroup=Parameters,Parameter=v" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M1_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M1_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0144" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_M1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M2_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M2_Production],ParameterGroup=Parameters,Parameter=v" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M2_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Reactions[M2_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0144" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[mu_M2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
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
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.2044281714000001e+27 0 0 0 6.0221408570000002e+30 0 30000000 100 0.20000000000000001 0 0 30000000 0 0 1 0.00035 100000000000 0.12 50 0.68999999999999995 10000 500000000 4.8000000000000002e-11 100000000000000 0.80000000000000004 10000 0.0070000000000000001 63945 5.75e-06 7 0.000102 0.10199999999999999 1.4399999999999999 2.8799999999999999 338000 0.0144 8660 1420 0.012 100000 0.0144 300000000 10 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="50000"/>
        <Parameter name="StepSize" type="float" value="0.34560000000000002"/>
        <Parameter name="Duration" type="float" value="17280"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
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
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
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
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Fig_2_B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[C_e7]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[C_e7],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[T_e9]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Kronik2008 - Improving alloreactive CTL immunotherapy for malignant gliomas using a simulation model of their interactive dynamics,Vector=Values[T_e9],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Kronik2008.xml">
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="CTL_Death" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="CTL_Infusion" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="CTL_Recruitment" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="C_e7" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="F_beta" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="F_beta_Basal_Production" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="F_beta_Degradation" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="F_beta_Tumor_Production" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="F_gamma" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="F_gamma_CTL_Production" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="F_gamma_Degradation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Function_for_CTL_Recruitment" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_F_beta_Tumor_Production" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_F_gamma_CTL_Production" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_Tumor_Elimination_CTL" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_Tumor_Growth" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="K" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="M1" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="M1_Degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="M1_Expression_Stimulated" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="M1_Receptor_Expression_Basal" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="M2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="M2_Degradation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="M2_Production" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="S" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="S_1" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="S_2" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="S_3" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="S_4" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="S_5" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="S_dose" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="S_interval" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="T" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="T_e9" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="Tumor_Elimination_CTL" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Tumor_Growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="a_C_M2" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="a_C_beta" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="a_M1_gamma" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="a_M2_beta" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="a_M2_gamma" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="a_T" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="a_T_beta" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="a_beta_T" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="a_gamma_C" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="e_C_M2" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="e_C_beta" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="e_M1_gamma" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="e_M2_beta" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="e_M2_gamma" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="e_T" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="e_T_beta" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="g_M1" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="g_beta" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="h_T" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="mu_C" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="mu_M1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="mu_M2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="mu_beta" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="mu_gamma" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_0"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_6" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="liter" symbol="l">
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_20" name="mole" symbol="mol">
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_33" name="hour" symbol="h">
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
