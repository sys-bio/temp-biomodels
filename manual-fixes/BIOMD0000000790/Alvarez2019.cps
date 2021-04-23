<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-08-12 15:13:15 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:10:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
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
    <Function key="Function_43" name="Function_for_Tumor_Growth_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:05:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        a*T_1*(1-b*T_1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="T_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_269" name="b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function_for_Tumor_Growth_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:06:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        a*p*T_2*(1-b*T_2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="T_2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_286" name="b" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function_for_Tumor_Killing_T1_E1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:10:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        mu*E_1*T_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="mu" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="E_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="T_1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function_for_Tumor_Killing_T1_E2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:26:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        beta*E_2*T_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="beta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="E_2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="T_1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function_for_Tumor_Competition_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:28:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        nu*T_1*T_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="nu" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="T_1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_309" name="T_2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function_for_Tumor_Competition_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:29:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        r*nu*T_1*T_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="nu" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="T_1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="T_2" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function_for_Tumor_Killing_T2_E1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:34:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        mu*q*E_1*T_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="q" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="E_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="T_2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="mu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function_for_E1_Depletion" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:38:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        c_3*(T_1+T_2)*E_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="c_3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="T_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_311" name="T_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="E_1" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function_for_E1_Recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:40:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
c_4*(T_1+s*T_2)*E_1
)/(
c_5+T_1+T_2
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="c_4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="T_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_301" name="s" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="T_2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_307" name="E_1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_343" name="c_5" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function_for_E2_Recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:42:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        d_1*T_1*E_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="d_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="T_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="E_1" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function_for_E2_Depletion" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:43:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        d_2*T_1*E_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="d_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="T_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="E_2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0002418"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30930063"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T11:51:56Z</dcterms:W3CDTF>
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
      This is a non-linear mathematical model of cancer immunosurveillance that takes into account intratumoral phenotypic heterogeneity, such as differential expression of cell surface receptors and growth factors, according to cell-mediated immune responses. The model describes phenomena that have also been observed in vivo, such as tumor dormancy, cancer immunoediting, and a strong sensitivity to initial conditions.
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
        <dcterms:W3CDTF>2019-08-12T15:42:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94498"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="T_1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:45:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0001063"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="T_2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:45:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0001063"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="E_1_Innate" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:45:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000623"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0001065"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="E_2_Adaptive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:45:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000084"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:01:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:58:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="mu" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:48:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="nu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:48:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="c_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:48:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="c_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="c_3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="c_4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="c_5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="d_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="d_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="d_3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:49:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="q" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:49:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:49:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="s" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:59:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="T_Total" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:55:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[T_1],Reference=Concentration>+&lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[T_2],Reference=Concentration>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Tumor_Growth_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:04:58Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5032" name="a" value="0.514"/>
          <Constant key="Parameter_5031" name="b" value="2e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Tumor_Growth_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:06:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5034" name="a" value="0.514"/>
          <Constant key="Parameter_5033" name="p" value="0.35"/>
          <Constant key="Parameter_5037" name="b" value="2e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Tumor_Killing_T1_E1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:10:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002420"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5035" name="mu" value="1.101e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Tumor_Killing_T1_E2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:25:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002419"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="beta" value="1.101e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Tumor_Competition_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:28:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035212"/>
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
          <Constant key="Parameter_7536" name="nu" value="1.101e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Tumor_Competition_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:29:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035212"/>
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
          <Constant key="Parameter_5052" name="r" value="1.5"/>
          <Constant key="Parameter_5054" name="nu" value="1.101e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Tumor_Killing_T2_E1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:34:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002420"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7517" name="q" value="1"/>
          <Constant key="Parameter_5049" name="mu" value="1.101e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="E1_Production_Constant" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:36:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7534" name="v" value="13000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="E1_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:36:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7526" name="k1" value="0.0412"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="E1_Depletion" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:37:12Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7525" name="c_3" value="3.422e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="E1_Recruitment" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:39:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030101"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7518" name="c_4" value="0.1245"/>
          <Constant key="Parameter_5066" name="s" value="1"/>
          <Constant key="Parameter_5030" name="c_5" value="2.0193e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="E2_Recruitment" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:42:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0072683"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7544" name="d_1" value="1.1e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="E2_Depletion" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:43:12Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7512" name="d_2" value="3.42e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="E2_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T13:44:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5055" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[T_1]" value="80000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[T_2]" value="20000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[E_1_Innate]" value="10500000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[E_2_Adaptive]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[a]" value="0.51400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[b]" value="2.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[mu]" value="1.101e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[beta]" value="1.101e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[nu]" value="1.101e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_1]" value="13000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_2]" value="0.041200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_3]" value="3.4220000000000002e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_4]" value="0.1245" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_5]" value="20193000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_1]" value="1.1000000000000001e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_2]" value="3.4200000000000001e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_3]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[p]" value="0.34999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[q]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[r]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[s]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[T_Total]" value="100000000" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_1],ParameterGroup=Parameters,Parameter=a" value="0.51400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_1],ParameterGroup=Parameters,Parameter=b" value="2.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2],ParameterGroup=Parameters,Parameter=a" value="0.51400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2],ParameterGroup=Parameters,Parameter=p" value="0.34999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2],ParameterGroup=Parameters,Parameter=b" value="2.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E1],ParameterGroup=Parameters,Parameter=mu" value="1.101e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E2],ParameterGroup=Parameters,Parameter=beta" value="1.101e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_1],ParameterGroup=Parameters,Parameter=nu" value="1.101e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_2],ParameterGroup=Parameters,Parameter=r" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_2],ParameterGroup=Parameters,Parameter=nu" value="1.101e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T2_E1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T2_E1],ParameterGroup=Parameters,Parameter=q" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[q],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T2_E1],ParameterGroup=Parameters,Parameter=mu" value="1.101e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Production_Constant]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Production_Constant],ParameterGroup=Parameters,Parameter=v" value="13000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Death],ParameterGroup=Parameters,Parameter=k1" value="0.041200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Depletion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Depletion],ParameterGroup=Parameters,Parameter=c_3" value="3.4220000000000002e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment],ParameterGroup=Parameters,Parameter=c_4" value="0.1245" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment],ParameterGroup=Parameters,Parameter=s" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment],ParameterGroup=Parameters,Parameter=c_5" value="20193000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Recruitment],ParameterGroup=Parameters,Parameter=d_1" value="1.1000000000000001e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Depletion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Depletion],ParameterGroup=Parameters,Parameter=d_2" value="3.4200000000000001e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Death],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_0" name="Figure_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-12T14:09:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[T_1]" value="4.8177126856000005e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[T_2]" value="1.2044281714000001e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[E_1_Innate]" value="6.3232478998500005e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Compartments[compartment],Vector=Metabolites[E_2_Adaptive]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[a]" value="0.51400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[b]" value="2.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[mu]" value="1.101e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[beta]" value="1.101e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[nu]" value="1.101e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_1]" value="13000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_2]" value="0.041200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_3]" value="3.4220000000000002e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_4]" value="0.1245" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_5]" value="20193000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_1]" value="1.1000000000000001e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_2]" value="3.4200000000000001e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_3]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[p]" value="0.34999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[q]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[r]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[s]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[T_Total]" value="100000000" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_1],ParameterGroup=Parameters,Parameter=a" value="0.51400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_1],ParameterGroup=Parameters,Parameter=b" value="2.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2],ParameterGroup=Parameters,Parameter=a" value="0.51400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2],ParameterGroup=Parameters,Parameter=p" value="0.34999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Growth_2],ParameterGroup=Parameters,Parameter=b" value="2.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E1],ParameterGroup=Parameters,Parameter=mu" value="1.101e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T1_E2],ParameterGroup=Parameters,Parameter=beta" value="1.101e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_1],ParameterGroup=Parameters,Parameter=nu" value="1.101e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_2],ParameterGroup=Parameters,Parameter=r" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Competition_2],ParameterGroup=Parameters,Parameter=nu" value="1.101e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T2_E1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T2_E1],ParameterGroup=Parameters,Parameter=q" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[q],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[Tumor_Killing_T2_E1],ParameterGroup=Parameters,Parameter=mu" value="1.101e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Production_Constant]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Production_Constant],ParameterGroup=Parameters,Parameter=v" value="13000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Death],ParameterGroup=Parameters,Parameter=k1" value="0.041200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Depletion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Depletion],ParameterGroup=Parameters,Parameter=c_3" value="3.4220000000000002e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment],ParameterGroup=Parameters,Parameter=c_4" value="0.1245" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment],ParameterGroup=Parameters,Parameter=s" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E1_Recruitment],ParameterGroup=Parameters,Parameter=c_5" value="20193000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[c_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Recruitment],ParameterGroup=Parameters,Parameter=d_1" value="1.1000000000000001e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Depletion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Depletion],ParameterGroup=Parameters,Parameter=d_2" value="3.4200000000000001e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Reactions[E2_Death],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[d_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 80000000 10500000 20000000 0 100000000 1 0.51400000000000001 2.0000000000000001e-09 1.101e-07 1.101e-10 1.101e-09 13000 0.041200000000000001 3.4220000000000002e-10 0.1245 20193000 1.1000000000000001e-07 3.4200000000000001e-10 0.02 0.34999999999999998 1 1.5 1 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="2"/>
        <Parameter name="Duration" type="float" value="2000"/>
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
    <PlotSpecification name="Alvarez2019_Figure_1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[T_Total]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity,Vector=Values[T_Total],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Alvarez2019.xml">
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="E1_Death" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="E1_Depletion" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="E1_Production_Constant" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="E1_Recruitment" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="E2_Death" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="E2_Depletion" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="E2_Recruitment" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="E_1_Innate" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="E_2_Adaptive" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Function_for_E1_Depletion" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_E1_Recruitment" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_E2_Depletion" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_E2_Recruitment" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_Tumor_Competition_1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_Tumor_Competition_2" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_Tumor_Growth_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_Tumor_Growth_2" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_Tumor_Killing_T1_E1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_Tumor_Killing_T1_E2" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_Tumor_Killing_T2_E1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="T_1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="T_2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="T_Total" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Tumor_Competition_1" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Tumor_Competition_2" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Tumor_Growth_1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Tumor_Growth_2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Tumor_Killing_T1_E1" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Tumor_Killing_T1_E2" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Tumor_Killing_T2_E1" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="b" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="c_1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="c_2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="c_3" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="c_4" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="c_5" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d_1" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="d_2" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="d_3" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="nu" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="q" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="s" COPASIkey="ModelValue_16"/>
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
  </ListOfUnitDefinitions>
</COPASI>
