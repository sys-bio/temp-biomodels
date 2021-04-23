<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-11-18 09:16:43 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
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
    <Function key="Function_40" name="Function_for_Bcl6_Production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T10:59:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (a_c*U^n_c/(A_c^n_c+U^n_c))*(M_c^r_c/(M_c^r_c+B^r_c+I^r_c+C^r_c))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="a_c" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="U" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="n_c" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="A_c" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="M_c" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="r_c" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="B" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="I" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="C" order="8" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function_for_PD1_Production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:04:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (sigma_p+(a_p*U^n_p)/(A_p^n_p+U^n_p))*(M_p^r_p/(M_p^r_p+B^r_p))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="sigma_p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="a_p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="U" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="n_p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="A_p" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="M_p" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="r_p" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="B" order="7" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function_for_IRF4_Production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:15:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Phi_L_P*(sigma_i+(a_i*U^n_i/(A_i^n_i+U^n_i))+(k_i*B^m_i/(K_i^m_i+B^m_i))+(q_i*I^s_i/(Q_i^s_i+I^s_i)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="Phi_L_P" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="sigma_i" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="a_i" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="U" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="n_i" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="A_i" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="k_i" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="B" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_285" name="m_i" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="K_i" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="I" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_288" name="s_i" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="Q_i" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="q_i" order="13" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function_for_Blimp1_Production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:20:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((a_b * U^n_b)/(A_b^n_b + U^n_b)+(k_b * I^m_b)/(K_b^m_b + I^m_b))*(M_b^r_b/(M_b^r_b+C^r_b))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="a_b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="U" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="n_b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="A_b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="k_b" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="I" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="m_b" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="K_b" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="r_b" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="M_b" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="C" order="10" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C3224"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C53482"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94697"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000001543"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:10090"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30745900"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T10:44:55Z</dcterms:W3CDTF>
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
      This is a mathematical mechanistic immunobiochemical model that incorporates T cell pathways that control programmed cell death protein 1 (PD-1) expression. A core component of the model is a kinetic motif, termed a PD-1 Double Incoherent Feed-Forward Loop (DIFFL), which reflects known interactions between IRF4, Blimp-1, and Bcl-6.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T09:07:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000763"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="C" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:32:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C26149"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:32:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:pr:PR:000001919"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="I" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T09:09:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C17926"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="B" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T15:26:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:pr:PR:000001831"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="sigma_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="sigma_p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:05:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="a_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="a_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="a_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="a_b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="A_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="A_p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:09:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="A_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="A_b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="n_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="n_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="n_b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="n_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T15:37:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="q_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="K_b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T15:37:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="K_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Q_i" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="m_b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="m_i" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:05:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="s_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="M_b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="M_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="M_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="H_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="H_L" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="r_b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="r_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="r_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="h_L" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="mu_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="mu_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="mu_b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="mu_i" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="L" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="K_i_nu" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="K_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="gamma_y" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="gamma_p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:14:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="delta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="theta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="lambda" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:28:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kappa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:28:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="y_a_k" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T11:56:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[lambda],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[nu_k],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[c_T_a_k],Reference=Value>)/(1+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[gamma_y],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[lambda],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[nu_k],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[c_T_a_k],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="c_T_a_k" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T11:54:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*(1+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[kappa],Reference=Value>-((1+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[kappa],Reference=Value>)^2-4*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=Value>)^0.5)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="nu_k" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T11:53:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_p],Reference=Value>/(&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[kappa],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_i_nu],Reference=Value>)*(&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[kappa],Reference=Value>/(&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[kappa],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_p],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="mu_a_k" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T11:58:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[y_a_k],Reference=Value>)/(1+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[gamma_p],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[theta],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[nu_k],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[c_T_a_k],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[y_a_k],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="phi_L_P" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:00:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[H_p],Reference=Value>/(&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[H_p],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[L],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[P],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="U_a_k_P" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:01:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_a_k],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[phi_L_P],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="sigma_p_tilde" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:05:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[sigma_p],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[k_T],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[T],Reference=Value>^&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_T],Reference=Value>/(&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_T],Reference=Value>^&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_T],Reference=Value>+&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[T],Reference=Value>^&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_T],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="k_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="K_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="n_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:09:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="Phi_L_P" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:14:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[H_L],Reference=Value>^&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[h_L],Reference=Value>/(&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[H_L],Reference=Value>^&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[h_L],Reference=Value>+(&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[L],Reference=Value>*&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[P],Reference=Concentration>)^&lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[h_L],Reference=Value>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Bcl6_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19060"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T10:59:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C112927"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5024" name="a_c" value="0.75"/>
          <Constant key="Parameter_5022" name="U" value="0.0215815"/>
          <Constant key="Parameter_5021" name="n_c" value="3"/>
          <Constant key="Parameter_5020" name="A_c" value="0.01"/>
          <Constant key="Parameter_5019" name="M_c" value="10"/>
          <Constant key="Parameter_5018" name="r_c" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Bcl6_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:04:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5017" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="PD1_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19060"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:04:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C112927"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5016" name="sigma_p" value="0.1"/>
          <Constant key="Parameter_5015" name="a_p" value="0.75"/>
          <Constant key="Parameter_5014" name="U" value="0.0215815"/>
          <Constant key="Parameter_5013" name="n_p" value="3"/>
          <Constant key="Parameter_5012" name="A_p" value="0.1"/>
          <Constant key="Parameter_5011" name="M_p" value="10"/>
          <Constant key="Parameter_5010" name="r_p" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="PD1_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:13:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="IRF4_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19060"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:15:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C112927"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="Phi_L_P" value="1"/>
          <Constant key="Parameter_5007" name="sigma_i" value="0.3"/>
          <Constant key="Parameter_5006" name="a_i" value="75"/>
          <Constant key="Parameter_5005" name="U" value="0.0215815"/>
          <Constant key="Parameter_5004" name="n_i" value="2"/>
          <Constant key="Parameter_5003" name="A_i" value="1"/>
          <Constant key="Parameter_5002" name="k_i" value="7.5"/>
          <Constant key="Parameter_5001" name="m_i" value="2"/>
          <Constant key="Parameter_5000" name="K_i" value="1"/>
          <Constant key="Parameter_4999" name="s_i" value="2"/>
          <Constant key="Parameter_4998" name="Q_i" value="1"/>
          <Constant key="Parameter_4997" name="q_i" value="7.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="IRF4_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:19:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Blimp1_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:20:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Blimp1_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19060"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-15T12:20:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C112927"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="a_b" value="100"/>
          <Constant key="Parameter_4993" name="U" value="0.0215815"/>
          <Constant key="Parameter_4992" name="n_b" value="2"/>
          <Constant key="Parameter_4991" name="A_b" value="10"/>
          <Constant key="Parameter_4990" name="k_b" value="25"/>
          <Constant key="Parameter_4989" name="m_b" value="2"/>
          <Constant key="Parameter_4988" name="K_b" value="1"/>
          <Constant key="Parameter_4987" name="r_b" value="2"/>
          <Constant key="Parameter_4986" name="M_b" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[C]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[P]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[B]" value="1" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[sigma_i]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[sigma_p]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_c]" value="0.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_p]" value="0.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_i]" value="75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_b]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_c]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_p]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_i]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_b]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_c]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_p]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_b]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_i]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[k_b]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[k_i]" value="7.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[q_i]" value="7.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_i]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[Q_i]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[m_b]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[m_i]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[s_i]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[M_b]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[M_c]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[M_p]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[H_p]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[H_L]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[r_b]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[r_c]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[r_p]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[h_L]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_c]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_p]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_i]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[L]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_i_nu]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_p]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[gamma_y]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[gamma_p]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[delta]" value="5000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[theta]" value="50000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[lambda]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[kappa]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[y_a_k]" value="0.0020058592934787296" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[c_T_a_k]" value="4.999875000000209e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[nu_k]" value="0.0098910990000098935" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_a_k]" value="0.02158146880396632" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[phi_L_P]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[U_a_k_P]" value="0.02158146880396632" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[sigma_p_tilde]" value="0.10000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[k_T]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_T]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_T]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[T]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[Phi_L_P]" value="1" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Production],ParameterGroup=Parameters,Parameter=a_c" value="0.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Production],ParameterGroup=Parameters,Parameter=U" value="0.02158146880396632" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[U_a_k_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Production],ParameterGroup=Parameters,Parameter=n_c" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Production],ParameterGroup=Parameters,Parameter=A_c" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Production],ParameterGroup=Parameters,Parameter=M_c" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[M_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Production],ParameterGroup=Parameters,Parameter=r_c" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[r_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Bcl6_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production],ParameterGroup=Parameters,Parameter=sigma_p" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[sigma_p_tilde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production],ParameterGroup=Parameters,Parameter=a_p" value="0.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production],ParameterGroup=Parameters,Parameter=U" value="0.02158146880396632" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[U_a_k_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production],ParameterGroup=Parameters,Parameter=n_p" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production],ParameterGroup=Parameters,Parameter=A_p" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production],ParameterGroup=Parameters,Parameter=M_p" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[M_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Production],ParameterGroup=Parameters,Parameter=r_p" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[r_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[PD1_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=Phi_L_P" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[Phi_L_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=sigma_i" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[sigma_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=a_i" value="75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=U" value="0.02158146880396632" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[U_a_k_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=n_i" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=A_i" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=k_i" value="7.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[k_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=m_i" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[m_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=K_i" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=s_i" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[s_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=Q_i" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[Q_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Production],ParameterGroup=Parameters,Parameter=q_i" value="7.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[q_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[IRF4_Degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[mu_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=a_b" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[a_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=U" value="0.02158146880396632" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[U_a_k_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=n_b" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[n_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=A_b" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[A_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=k_b" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[k_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=m_b" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[m_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=K_b" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[K_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=r_b" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[r_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Reactions[Blimp1_Production],ParameterGroup=Parameters,Parameter=M_b" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[M_b],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
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
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1 1 1 1 0.0020058592934787296 4.999875000000209e-05 0.0098910990000098935 0.02158146880396632 1 0.02158146880396632 0.10000000000000001 1 1 0.29999999999999999 0.10000000000000001 0.75 0.75 75 100 0.01 0.10000000000000001 1 10 3 3 2 2 25 7.5 7.5 1 1 1 2 2 2 10 10 10 0.10000000000000001 0.10000000000000001 2 2 4 4 0.10000000000000001 0.10000000000000001 1 1 0 0.001 0.01 500 500 5000 50000 10000 0.0001 1 0.5 1 2 0 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
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
        <Parameter name="Subtask" type="unsignedInteger" value="0"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="100"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.0001"/>
            <Parameter name="Maximum" type="float" value="1000"/>
            <Parameter name="log" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
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
    <PlotSpecification name="Nikolaev2019_Figure_5" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Bcl-6" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[C],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Blimp-1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[B],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="IRF4" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PD-1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Values[alpha],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Nikolaev2019 - Immunobiochemical reconstruction of influenza lung infection-melanoma skin cancer interactions,Vector=Compartments[compartment],Vector=Metabolites[P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Nikolaev2019.xml">
    <SBMLMap SBMLid="A_b" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="A_c" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="A_i" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="A_p" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="B" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Bcl6_Degradation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Bcl6_Production" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Blimp1_Degradation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Blimp1_Production" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Function_for_Bcl6_Production" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_Blimp1_Production" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_IRF4_Production" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_PD1_Production" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="H_L" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="H_p" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="I" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="IRF4_Degradation" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="IRF4_Production" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="K_T" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="K_b" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="K_i" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="K_i_nu" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="K_p" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="L" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="M_b" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="M_c" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="M_p" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="P" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="PD1_Degradation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="PD1_Production" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Phi_L_P" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="Q_i" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="T" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="U_a_k_P" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="a_b" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="a_c" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="a_i" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="a_p" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="c_T_a_k" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="gamma_p" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="gamma_y" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="h_L" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k_T" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="k_b" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k_i" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="m_b" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="m_i" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="mu_a_k" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="mu_b" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="mu_c" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="mu_i" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="mu_p" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="n_T" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="n_b" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="n_c" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="n_i" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="n_p" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="nu_k" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="phi_L_P" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="q_i" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="r_b" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="r_c" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="r_p" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="s_i" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="sigma_i" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="sigma_p" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="sigma_p_tilde" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="theta" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="y_a_k" COPASIkey="ModelValue_46"/>
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
    <UnitDefinition key="Unit_34" name="day" symbol="d">
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
