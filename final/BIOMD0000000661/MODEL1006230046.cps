<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-01-17 15:59:02 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
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
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for T-cell degradation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:46:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*m*T*Lm*RT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="m" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_258" name="T" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="Lm" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="RT" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for tumour cell degradation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:36:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*m*T*LT*Rm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="m" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="T" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_271" name="LT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="Rm" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for LT synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:47:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k2*T*m
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="k2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="T" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="m" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for RT degradation (SL modifier)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:50:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k8*RT*SL
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="k8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="RT" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="SL" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for Rm degradation (SL modifier)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:51:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k8*Rm*SL
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="k8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="Rm" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="SL" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for LT degradation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:56:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (K4+k3)*LT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="K4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="k3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="LT" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for Lm degradation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:57:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k3 + k4)*Lm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="k3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="k4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="Lm" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for LT degradation (m, T and Rm modifiers)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:01:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5*m*T*LT*Rm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="k5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="m" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="T" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_291" name="LT" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="Rm" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for Lm degradation (m, T and RT modifiers)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:18:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5*m*T*Lm*RT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="k5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="m" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_285" name="T" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="Lm" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="RT" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for SL synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:27:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*(Lm*m + LT*T)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="k3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="Lm" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_292" name="m" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_301" name="LT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_303" name="T" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for SL degradation (Rm, m, RT, T and SL modifiers)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k9*(Rm*m+RT*T)*SL
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="k9" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="Rm" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="m" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="RT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="T" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="SL" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Webb2002_FasFasLsystem_Tumour" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:is rdf:resource="urn:miriam:pubmed:12208611"/>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:12208611"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:27:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>emmafairbanks93@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Fairbanks</vCard:Family>
            <vCard:Given>Emma Louise</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Nottingham University</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mroberts@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Roberts</vCard:Family>
            <vCard:Given>Matthew Grant</vCard:Given>
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
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1006230046"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002347"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051805"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1902044"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pw:PW:0000106"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-16T10:56:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000289"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Tumour cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-16T15:06:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12922"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="T-Lymphocyte cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-16T15:06:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C104083"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="T-cells (T)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:33:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C104083"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="mFasL (LT)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:20:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:17089"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P48023"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C14070"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="FasR (RT)" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:20:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P25445"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C14070"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Tumour cells (m)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:21:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12922"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="mFasL (Lm)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:20:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:17089"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P48023"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C14070"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="FasR (Rm)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:20:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P25445"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C14070"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="sFasL (SL)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:21:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000000547"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:39:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Parameter value obtained from:  J.A. Janeway, P. Travers, Immunology: the Immune System in Health and Disease, Current Biology, London,
1996.
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9257817" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T13:04:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-16T11:55:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T14:06:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T14:06:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Parameter value obtained from:  J.A. Janeway, P. Travers, Immunology: the Immune System in Health and Disease, Current Biology, London,
1996.
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k6" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:7505205" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T12:56:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k7" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:1372394" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T13:09:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k8" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:7505205" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T12:48:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k9" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:7505205" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T13:08:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k10" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k11" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:isbn:0195064666" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-17T13:04:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="T-cell degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:48:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17557"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          1	is version of		http://purl.obolibrary.org/obo/IDOMAL_0000393
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="k1" value="8.38e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Tumour cell degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:38:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17557"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k1" value="8.38e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="SL degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k1" value="13.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Lm synthesis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:41:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="v" value="3110"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="RT synthesis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:42:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0032800"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="v" value="2244"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[T-Lymphocyte cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Rm synthesis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:43:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0032800"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="v" value="2244"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="RT degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:44:18Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4995" name="k1" value="0.35"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[T-Lymphocyte cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Rm degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:45:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="k1" value="0.35"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="LT synthesis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:46:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="k2" value="0.006"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="RT degradation (SL modifier)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:49:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="k8" value="1.92e+10"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Rm degradation (SL modifier)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:54:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="k8" value="1.92e+10"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="LT degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:ncit:C18164"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:56:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000178"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="K4" value="0.35"/>
          <Constant key="Parameter_4988" name="k3" value="5.9413"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Lm degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C18164"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000178"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T08:59:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4958" name="k3" value="5.9413"/>
          <Constant key="Parameter_4959" name="k4" value="0.35"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="LT degradation (m, T and Rm modifiers)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:00:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20139"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          NCIT_C20139
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4960" name="k5" value="2.52e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Lm degradation (m, T and RT modifiers)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:22:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20139"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="k5" value="2.52e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="SL formation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:ncit:C18164"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:26:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          1	has property	Systems Biology Ontology	SBO:0000178
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4962" name="k3" value="5.9413"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="SL degradation (Rm, m, RT, T and SL modifiers)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-08T09:31:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          1	is version of	NCIt	NCIT_C20139
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="k9" value="8.73e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[T-Lymphocyte cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[T-cells (T)]" value="3.0110704285000071e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[mFasL (LT)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[T-Lymphocyte cell],Vector=Metabolites[FasR (RT)]" value="6.0221408570000347e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[Tumour cells (m)]" value="3.0110704285000071e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell],Vector=Metabolites[mFasL (Lm)]" value="6.0221408570000149e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell],Vector=Metabolites[FasR (Rm)]" value="6.0221408570000149e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[sFasL (SL)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k1]" value="8.38e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k2]" value="0.0060000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k3]" value="5.9413" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k4]" value="0.34999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k5]" value="2.52e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k6]" value="2244" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k7]" value="0.34999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k8]" value="19200000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k9]" value="8730000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k10]" value="3110" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k11]" value="13.9" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[T-cell degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[T-cell degradation],ParameterGroup=Parameters,Parameter=k1" value="8.38e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Tumour cell degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Tumour cell degradation],ParameterGroup=Parameters,Parameter=k1" value="8.38e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[SL degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[SL degradation],ParameterGroup=Parameters,Parameter=k1" value="13.9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Lm synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Lm synthesis],ParameterGroup=Parameters,Parameter=v" value="3110" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[RT synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[RT synthesis],ParameterGroup=Parameters,Parameter=v" value="2244" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Rm synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Rm synthesis],ParameterGroup=Parameters,Parameter=v" value="2244" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[RT degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[RT degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Rm degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Rm degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[LT synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[LT synthesis],ParameterGroup=Parameters,Parameter=k2" value="0.0060000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[RT degradation (SL modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[RT degradation (SL modifier)],ParameterGroup=Parameters,Parameter=k8" value="19200000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Rm degradation (SL modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Rm degradation (SL modifier)],ParameterGroup=Parameters,Parameter=k8" value="19200000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[LT degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[LT degradation],ParameterGroup=Parameters,Parameter=K4" value="0.34999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[LT degradation],ParameterGroup=Parameters,Parameter=k3" value="5.9413" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Lm degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Lm degradation],ParameterGroup=Parameters,Parameter=k3" value="5.9413" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Lm degradation],ParameterGroup=Parameters,Parameter=k4" value="0.34999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[LT degradation (m\, T and Rm modifiers)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[LT degradation (m\, T and Rm modifiers)],ParameterGroup=Parameters,Parameter=k5" value="2.52e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Lm degradation (m\, T and RT modifiers)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[Lm degradation (m\, T and RT modifiers)],ParameterGroup=Parameters,Parameter=k5" value="2.52e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[SL formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[SL formation],ParameterGroup=Parameters,Parameter=k3" value="5.9413" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[SL degradation (Rm\, m\, RT\, T and SL modifiers)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Reactions[SL degradation (Rm\, m\, RT\, T and SL modifiers)],ParameterGroup=Parameters,Parameter=k9" value="8730000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 6.0221408570000149e+26 6.0221408570000149e+26 6.0221408570000347e+27 3.0110704285000071e+26 3.0110704285000071e+26 1 1 1 8.38e-10 0.0060000000000000001 5.9413 0.34999999999999998 2.52e-09 2244 0.34999999999999998 19200000000 8730000000 3110 13.9 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
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
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="240"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="24"/>
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
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[T]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[T-cells (T)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LT]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[mFasL (LT)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[RT]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[T-Lymphocyte cell],Vector=Metabolites[FasR (RT)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[Tumour cells (m)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lm]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell],Vector=Metabolites[mFasL (Lm)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rm]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[Tumour cell],Vector=Metabolites[FasR (Rm)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SL]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Webb2002_FasFasLsystem_Tumour,Vector=Compartments[compartment],Vector=Metabolites[sFasL (SL)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1006230046.xml">
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Function_for_LT_degradation" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_LT_degradation__m__T_and_Rm_modifiers" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_LT_synthesis" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_Lm_degradation" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_Lm_degradation__m__T_and_RT_modifiers" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_RT_degradation__SL_modifier" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_Rm_degradation__SL_modifier" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_SL_degradation__Rm__m__RT__T_and_SL_modifiers" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_SL_synthesis" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_T_cell_degradation" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_tumour_cell_degradation" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="LT" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="LT_degradation" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="LT_degradation__m__T_and_Rm_modifiers" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="LT_synthesis" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Lm" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Lm_degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Lm_degradation__m__T_and_RT_modifiers" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Lm_synthesis" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="RT" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="RT_degradation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="RT_degradation__SL_modifier" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="RT_synthesis" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Rm" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Rm_degradation" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Rm_degradation__SL_modifier" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Rm_synthesis" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="SL" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="SL_degradation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="SL_degradation__Rm__m__RT__T_and_SL_modifiers" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="SL_synthesis" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="T" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="T_Lymphocyte_cell" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="T_cell_degradation" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Tumour_cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Tumour_cell_degradation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="m" COPASIkey="Metabolite_3"/>
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
  </ListOfUnitDefinitions>
</COPASI>
