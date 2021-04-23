<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-08-05 14:19:33 UTC -->
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
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:44:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
    <Function key="Function_40" name="Function_for_Logistic_Tumour_Growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:38:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*T*(1-b*T)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="T" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_262" name="b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function_for_NK-Induced_Tumour_Death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:40:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c*N*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="c" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="N" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="T" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function_for_Chemotherapy-Induced_Tumour_Death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:44:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K_T*(1-EXP(-1*delta_T*M))*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="K_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="delta_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_269" name="T" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function_for_NK_Death_Tumour_Killing" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:48:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p*N*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="N" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="T" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function_for_NK_Stimulation_IL-2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:51:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (p_N*N*I)/(g_N+I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="p_N" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="N" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_270" name="I" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="g_N" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function_for_NK_Death_Medicine" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:07:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K_N*(1-EXP(-1*delta_N*M))*N
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="M" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="K_N" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="delta_N" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="N" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function_for_CD8_T_Cell_Turnover" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:09:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (phi*m*L)/(phi+I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="phi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="m" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="L" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="I" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function_for_CD8_T_Cell_Death_Tumour_Killing" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:11:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        q*L*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="q" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="L" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="T" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function_for_CD8_T_Cell_Stimulation_NK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:12:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r_1*N*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="r_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="N" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_285" name="T" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function_for_CD8_Breakdown_Stimulation_IL-2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:24:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (u*(L^2)*C*I)/(kappa+I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="u" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="L" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="C" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="I" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="kappa" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function_for_CD8_T_Cell_Stimulation_Tumour_Debris" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:27:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (j*T*L)/(k+T)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="j" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="T" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="L" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_297" name="k" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function_for_CD8_T_Cell_Death_Medicine" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:33:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K_L*(1-EXP(-1*delta_L*M))*L
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="K_L" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="delta_L" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="L" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function_for_Lymphocyte_Death_Medicine" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:35:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K_C*(1-EXP(-1*delta_C*M))*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="K_C" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="delta_C" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="C" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function_for_Lymphocyte_Synthesis_Turnover_Bone_Marrow" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:39:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        beta*(alphabeta-C)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="beta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="alphabeta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="C" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function_for_IL-2_Production_Naive" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:43:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        phi*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="phi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="C" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function_for_IL-2_Production_Activated_CD8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (omega*L*I)/(zeta+I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="omega" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="L" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="I" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_316" name="zeta" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function_for_NK_Production_and_Turnover" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T11:03:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        f*(ef*C-N)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="f" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="ef" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="C" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="N" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function_for_CD8_T_Cell_Stimulation_IL-2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T11:07:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (p_I*L*I)/(g_I+I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="p_I" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="L" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_322" name="I" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_321" name="g_I" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy" simulationType="time" timeUnit="d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C15543"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C15632"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1080/17486700802216301"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:19:40Z</dcterms:W3CDTF>
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
      This is an updated version of a previous model that described the dynamics of cancer treatment, with descriptions of tumour cell numbers, specific and non-specific immune cells (NK, CD8+ T cells and other lymphocytes) with inclusion of chemo- and immunotherapy. This model incorporates new data to provide an improved and more comprehensive model, with specific emphasis on better descriptions of IL-2 dynamics.
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
        <dcterms:W3CDTF>2019-08-05T14:26:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94498"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="T_Tumour_Cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T14:13:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12922"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="N_Natural_Killer_Cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T14:13:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="L_CD8_T_Cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:32:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12542"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="C_Lymphocytes" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:32:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000542"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="M_Chemotherapy_Drug" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:32:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:28748"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="I_IL-2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:32:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q0GK43"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="a" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="K_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="delta_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="ef" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="f" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="p_N" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="g_N" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="K_N" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="delta_N" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="m" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="theta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="q" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:41:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="r_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="r_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="p_I" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="g_I" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="u" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kappa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:30:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="j" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="K_L" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="delta_L" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="alphabeta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:33:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:33:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="K_C" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="delta_C" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="gamma" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="mu_I" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="omega" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="phi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="zeta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="d" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="l" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:30:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="s" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="D" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:41:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[d],Reference=InitialValue>*((&lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[L_CD8_T_Cells],Reference=Concentration>/&lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[T_Tumour_Cells],Reference=Concentration>)^&lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[l],Reference=InitialValue>/(&lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[s],Reference=InitialValue>+(&lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[L_CD8_T_Cells],Reference=Concentration>/&lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[T_Tumour_Cells],Reference=Concentration>)^&lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[l],Reference=InitialValue>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="v_M" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:48:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="v_I" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:28:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="v_L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T12:28:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Logistic_Tumour_Growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:37:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5404" name="a" value="0.431"/>
          <Constant key="Parameter_5403" name="b" value="1.02e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
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
      <Reaction key="Reaction_1" name="NK-Induced_Tumour_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:39:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042267"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5402" name="c" value="2.9077e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="CD8_T_Cell-Induced_Tumour_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:40:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5401" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Chemotherapy-Induced_Tumour_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:43:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5398" name="K_T" value="0.9"/>
          <Constant key="Parameter_5397" name="delta_T" value="1.8328"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="NK_Death_Tumour_Killing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:47:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5400" name="p" value="2.794e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="NK_Stimulation_IL-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T09:48:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0032819"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5399" name="p_N" value="0.068"/>
          <Constant key="Parameter_5396" name="g_N" value="250360"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="NK_Death_Medicine" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:07:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5395" name="K_N" value="0.0675"/>
          <Constant key="Parameter_5394" name="delta_N" value="1.8328"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="CD8_T_Cell_Turnover" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:09:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042098"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5393" name="phi" value="2.38405e-07"/>
          <Constant key="Parameter_5392" name="m" value="0.009"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="CD8_T_Cell_Death_Tumour_Killing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:10:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5391" name="q" value="3.422e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="CD8_T_Cell_Stimulation_NK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:11:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031294"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="r_1" value="2.9077e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="CD8_T_Cell_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:13:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0036037"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5389" name="r_1" value="5.8467e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="CD8_Breakdown_Stimulation_IL-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:14:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5388" name="u" value="4.417e-14"/>
          <Constant key="Parameter_5387" name="kappa" value="2503.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="CD8_T_Cell_Stimulation_Tumour_Debris" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:26:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0043378"/>
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
          <Constant key="Parameter_5386" name="j" value="0.01245"/>
          <Constant key="Parameter_5385" name="k" value="2.019e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="CD8_T_Cell_Death_Medicine" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:34:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5384" name="K_L" value="0.0486"/>
          <Constant key="Parameter_5383" name="delta_L" value="1.8328"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Lymphocyte_Synthesis_Turnover_Bone_Marrow" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:35:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5382" name="beta" value="0.0063"/>
          <Constant key="Parameter_5381" name="alphabeta" value="2.25e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Lymphocyte_Death_Medicine" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:40:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5380" name="K_C" value="0.034"/>
          <Constant key="Parameter_5379" name="delta_C" value="1.8328"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Medicine_Excretion" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:42:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0007588"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5378" name="k1" value="0.5199"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="IL-2_Turnover" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:42:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030163"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5377" name="k1" value="11.7427"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="IL-2_Production_Naive" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:43:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006412"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5376" name="phi" value="2.38405e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="IL-2_Production_Activated_CD8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:45:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006412"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5375" name="omega" value="0.07874"/>
          <Constant key="Parameter_5374" name="zeta" value="2503.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Medicine_Injection" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T10:48:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C149592"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5373" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="NK_Production_and_Turnover" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T11:02:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0008219"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:NCIT:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5372" name="f" value="0.0125"/>
          <Constant key="Parameter_5371" name="ef" value="0.111"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="CD8_T_Cell_Stimulation_IL-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T11:06:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031294"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="p_I" value="2.971"/>
          <Constant key="Parameter_5369" name="g_I" value="2503.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="IL-2_Injection" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T11:16:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C149592"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5368" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="CD8_T_Cell_Activated_Injection" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T11:16:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C149592"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5367" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[T_Tumour_Cells]" value="10000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[N_Natural_Killer_Cells]" value="250000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[L_CD8_T_Cells]" value="526800" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[C_Lymphocytes]" value="2250000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[M_Chemotherapy_Drug]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[I_IL-2]" value="1073" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[a]" value="0.43099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[b]" value="1.02e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[c]" value="2.9076999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_T]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_T]" value="1.8328" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[ef]" value="0.111" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[f]" value="0.012500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[p]" value="2.794e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[p_N]" value="0.068000000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[g_N]" value="250360" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_N]" value="0.067500000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_N]" value="1.8328" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[m]" value="0.0089999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[theta]" value="0.0025035999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[q]" value="3.4220000000000002e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[r_1]" value="2.9077000000000001e-11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[r_2]" value="5.8466999999999997e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[p_I]" value="2.9710000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[g_I]" value="2503.5999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[u]" value="4.4170000000000003e-14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[kappa]" value="2503.5999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[j]" value="0.012449999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[k]" value="20190000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_L]" value="0.048599999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_L]" value="1.8328" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[alphabeta]" value="2250000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[beta]" value="0.0063" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_C]" value="0.034000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_C]" value="1.8328" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[gamma]" value="0.51990000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[mu_I]" value="11.742699999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[omega]" value="0.078740000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[phi]" value="2.38405e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[zeta]" value="2503.5999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[d]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[l]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[s]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[D]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[v_M]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[v_I]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[v_L]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Logistic_Tumour_Growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Logistic_Tumour_Growth],ParameterGroup=Parameters,Parameter=a" value="0.43099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Logistic_Tumour_Growth],ParameterGroup=Parameters,Parameter=b" value="1.02e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK-Induced_Tumour_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK-Induced_Tumour_Death],ParameterGroup=Parameters,Parameter=c" value="2.9076999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell-Induced_Tumour_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell-Induced_Tumour_Death],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Chemotherapy-Induced_Tumour_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Chemotherapy-Induced_Tumour_Death],ParameterGroup=Parameters,Parameter=K_T" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Chemotherapy-Induced_Tumour_Death],ParameterGroup=Parameters,Parameter=delta_T" value="1.8328" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Death_Tumour_Killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Death_Tumour_Killing],ParameterGroup=Parameters,Parameter=p" value="2.794e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Stimulation_IL-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=p_N" value="0.068000000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[p_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=g_N" value="250360" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[g_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Death_Medicine]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Death_Medicine],ParameterGroup=Parameters,Parameter=K_N" value="0.067500000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Death_Medicine],ParameterGroup=Parameters,Parameter=delta_N" value="1.8328" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Turnover]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Turnover],ParameterGroup=Parameters,Parameter=phi" value="2.38405e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Turnover],ParameterGroup=Parameters,Parameter=m" value="0.0089999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[m],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Death_Tumour_Killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Death_Tumour_Killing],ParameterGroup=Parameters,Parameter=q" value="3.4220000000000002e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[q],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_NK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_NK],ParameterGroup=Parameters,Parameter=r_1" value="2.9077000000000001e-11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[r_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Activation],ParameterGroup=Parameters,Parameter=r_1" value="5.8466999999999997e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[r_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_Breakdown_Stimulation_IL-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_Breakdown_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=u" value="4.4170000000000003e-14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_Breakdown_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=kappa" value="2503.5999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_Tumour_Debris]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_Tumour_Debris],ParameterGroup=Parameters,Parameter=j" value="0.012449999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[j],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_Tumour_Debris],ParameterGroup=Parameters,Parameter=k" value="20190000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Death_Medicine]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Death_Medicine],ParameterGroup=Parameters,Parameter=K_L" value="0.048599999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Death_Medicine],ParameterGroup=Parameters,Parameter=delta_L" value="1.8328" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Lymphocyte_Synthesis_Turnover_Bone_Marrow]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Lymphocyte_Synthesis_Turnover_Bone_Marrow],ParameterGroup=Parameters,Parameter=beta" value="0.0063" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Lymphocyte_Synthesis_Turnover_Bone_Marrow],ParameterGroup=Parameters,Parameter=alphabeta" value="2250000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[alphabeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Lymphocyte_Death_Medicine]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Lymphocyte_Death_Medicine],ParameterGroup=Parameters,Parameter=K_C" value="0.034000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[K_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Lymphocyte_Death_Medicine],ParameterGroup=Parameters,Parameter=delta_C" value="1.8328" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[delta_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Medicine_Excretion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Medicine_Excretion],ParameterGroup=Parameters,Parameter=k1" value="0.51990000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Turnover]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Turnover],ParameterGroup=Parameters,Parameter=k1" value="11.742699999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[mu_I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Production_Naive]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Production_Naive],ParameterGroup=Parameters,Parameter=phi" value="2.38405e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Production_Activated_CD8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Production_Activated_CD8],ParameterGroup=Parameters,Parameter=omega" value="0.078740000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Production_Activated_CD8],ParameterGroup=Parameters,Parameter=zeta" value="2503.5999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Medicine_Injection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[Medicine_Injection],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[v_M],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Production_and_Turnover]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Production_and_Turnover],ParameterGroup=Parameters,Parameter=f" value="0.012500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[NK_Production_and_Turnover],ParameterGroup=Parameters,Parameter=ef" value="0.111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[ef],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_IL-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=p_I" value="2.9710000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[p_I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=g_I" value="2503.5999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[g_I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Injection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[IL-2_Injection],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[v_I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Activated_Injection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Reactions[CD8_T_Cell_Activated_Injection],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Values[v_L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
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
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 526800 250000000 10000000 1073 0 2250000000 0 1 0.43099999999999999 1.02e-09 2.9076999999999998e-13 0.90000000000000002 1.8328 0.111 0.012500000000000001 2.794e-13 0.068000000000000005 250360 0.067500000000000004 1.8328 0.0089999999999999993 0.0025035999999999999 3.4220000000000002e-10 2.9077000000000001e-11 5.8466999999999997e-13 2.9710000000000001 2503.5999999999999 4.4170000000000003e-14 2503.5999999999999 0.012449999999999999 20190000 0.048599999999999997 1.8328 2250000000 0.0063 0.034000000000000002 1.8328 0.51990000000000003 11.742699999999999 0.078740000000000004 2.38405e-07 2503.5999999999999 0 0 0 0 0 0 
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
        <Parameter name="StepSize" type="float" value="2"/>
        <Parameter name="Duration" type="float" value="200"/>
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
    <PlotSpecification name="dePillis2009_Figure_1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="[C]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[C_Lymphocytes],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[I]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[I_IL-2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[L]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[L_CD8_T_Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[N]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[N_Natural_Killer_Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[T]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2009 - Mathematical model creation for cancer chemo-immunotherapy,Vector=Compartments[compartment],Vector=Metabolites[T_Tumour_Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="dePillis2009.xml">
    <SBMLMap SBMLid="CD8_Breakdown_Stimulation_IL_2" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="CD8_T_Cell_Activated_Injection" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="CD8_T_Cell_Activation" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="CD8_T_Cell_Death_Medicine" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="CD8_T_Cell_Death_Tumour_Killing" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="CD8_T_Cell_Induced_Tumour_Death" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="CD8_T_Cell_Stimulation_IL_2" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="CD8_T_Cell_Stimulation_NK" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="CD8_T_Cell_Stimulation_Tumour_Debris" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="CD8_T_Cell_Turnover" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="C_Lymphocytes" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Chemotherapy_Induced_Tumour_Death" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="D" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Function_for_CD8_Breakdown_Stimulation_IL_2" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_CD8_T_Cell_Death_Medicine" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_CD8_T_Cell_Death_Tumour_Killing" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_CD8_T_Cell_Stimulation_IL_2" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_CD8_T_Cell_Stimulation_NK" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_CD8_T_Cell_Stimulation_Tumour_Debris" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_CD8_T_Cell_Turnover" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_Chemotherapy_Induced_Tumour_Death" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_IL_2_Production_Activated_CD8" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_IL_2_Production_Naive" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_Logistic_Tumour_Growth" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_Lymphocyte_Death_Medicine" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_Lymphocyte_Synthesis_Turnover_Bone_Marrow" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_NK_Death_Medicine" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_NK_Death_Tumour_Killing" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_NK_Induced_Tumour_Death" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_NK_Production_and_Turnover" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_NK_Stimulation_IL_2" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="IL_2_Injection" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="IL_2_Production_Activated_CD8" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="IL_2_Production_Naive" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="IL_2_Turnover" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="I_IL_2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="K_C" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="K_L" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="K_N" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="K_T" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="L_CD8_T_Cells" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Logistic_Tumour_Growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Lymphocyte_Death_Medicine" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Lymphocyte_Synthesis_Turnover_Bone_Marrow" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="M_Chemotherapy_Drug" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Medicine_Excretion" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Medicine_Injection" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="NK_Death_Medicine" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="NK_Death_Tumour_Killing" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="NK_Induced_Tumour_Death" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="NK_Production_and_Turnover" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="NK_Stimulation_IL_2" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="N_Natural_Killer_Cells" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="T_Tumour_Cells" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="alphabeta" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="b" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="c" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="delta_C" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="delta_L" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="delta_N" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="delta_T" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="ef" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="f" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="g_I" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="g_N" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="j" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="l" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="m" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="mu_I" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="omega" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="p_I" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="p_N" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="phi" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="q" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="r_1" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="r_2" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="s" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="theta" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="u" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="v_I" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="v_L" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="v_M" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="zeta" COPASIkey="ModelValue_33"/>
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
