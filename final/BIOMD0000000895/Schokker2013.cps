<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-12-16 13:32:40 UTC -->
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
        <dcterms:W3CDTF>2019-12-16T11:25:25Z</dcterms:W3CDTF>
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
    <Function key="Function_44" name="Function_for_Mr_Growth_Boost" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:47:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        gbMr*Mr*(
1-(
Mr
)/(
ccMr-ccMr*p1
)
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="Mr" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_270" name="ccMr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="p1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="gbMr" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function_for_Mr_Recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:49:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
Mrrec*vrecMr*Se
)/(
Se+kmrecMr
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="Mrrec" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="vrecMr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="Se" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="kmrecMr" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function_for_Ma_Deactivation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:51:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
daMa*Ma*CD4
)/(
CD4+cdaMA
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="daMa" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="Ma" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="CD4" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_265" name="cdaMA" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function_for_Mr_Infection" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:53:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
iMr*Mr*Se
)/(
Se+cSeMri
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="iMr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="Mr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="Se" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="cSeMri" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function_for_Mr_Activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:55:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
aMr*Mr*Se
)/(
Se+cSeMr
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="aMr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="Mr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_276" name="Se" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="cSeMr" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function_for_CD4_Growth_Boost" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:57:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        gbCD4*CD4*(
1-CD4/cc1CD4
)*(
(
CD4^ngbCD4
)/(
CD4^ngbCD4+k2CD4^ngbCD4
)
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="gbCD4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="CD4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_302" name="cc1CD4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="ngbCD4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="k2CD4" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function_for_CD4_Recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:00:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
CD4rec*vrecCD4*Se
)/(
Se+kmrecCD4
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="CD4rec" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_307" name="vrecCD4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="Se" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_326" name="kmrecCD4" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function_for_CD4_Interaction_Naive_Se" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:03:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
CD4n*CD4*Se^ndCD4
)/(
Se^ndCD4+kSedCD4^ndCD4
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="CD4n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="CD4" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="Se" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="ndCD4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="kSedCD4" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function_for_CD8_Growth_Boost" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:21:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        gbCD8*CD8*(1-CD8/cc1CD8)*(CD8/(CD8+k2CD8))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="gbCD8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="CD8" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_360" name="cc1CD8" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="k2CD8" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function_for_CD8_Competition" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:25:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        compCD8*CD8*((Se/(Se+w1)))*((
CD4^ncompcd8
)/(
CD4^ncompcd8+kcompCD4^ncompcd8
))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="compCD8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="CD8" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="Se" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_370" name="w1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="CD4" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_372" name="ncompcd8" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="kcompCD4" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function_for_Mi_Bursting" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:47:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
bMi*Mi*Si^mMi
)/(
Si^mMi+(N*Mi)^mMi
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="bMi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="Mi" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_374" name="Si" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="mMi" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="N" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function_for_Mi_Lysis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:50:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
1-(
apop*Si
)/(
Si+N+Mi
)
)*(
lMi*(CD4+CD8/Mi)
)/(
(CD4+CD8/Mi)+cCD4CD8
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="lMi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="CD4" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_399" name="CD8" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_400" name="Mi" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_402" name="cCD4CD8" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="apop" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="Si" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_401" name="N" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function_for_Se_Proliferation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:57:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        pSe*Se*(1-Se/ccSe)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="pSe" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="Se" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_398" name="ccSe" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function_for_Si_Proliferation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:00:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        pSi*Si*(1-(
Si
)/(
Si+N*Mi
))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_378" name="pSi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="Si" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_408" name="N" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="Mi" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function_for_Mr_Infection_Si" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:07:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
iMr*Mr*Se
)/(
Se+cSeMr
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="iMr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="Mr" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_371" name="Se" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_420" name="cSeMr" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function_for_Mi_Lysis_Si" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:40:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
lMi*(CD4+CD8/Mi)
)/(
(CD4+CD8/Mi)+cCD4CD8
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_430" name="lMi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="CD4" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_445" name="CD8" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_446" name="Mi" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_442" name="cCD4CD8" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C157974"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17930"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C34082"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9031"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:23603730"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:18:11Z</dcterms:W3CDTF>
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
      This is a dynamic mathematical model describing the development of the cellular branch of the intestinal immune system of poultry during the first 42 days of life, and of its response towards an oral infection with Salmonella enterica serovar Enteritidis.
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
        <dcterms:W3CDTF>2019-12-16T13:16:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C34082"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="CD4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T13:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000492"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="CD8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T13:19:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C12542"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Mr" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T13:07:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000864"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Ma" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T13:21:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000863"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Mi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:44:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C12558"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000152"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Se" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T13:06:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C76380"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005576"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Si" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C28217"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T13:06:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C76380"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="CD4rec" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:44:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000492"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Mrrec" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:44:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12558"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="sMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="drMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="aMr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:28:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="cSeMr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:08:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="iMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="cSeMri" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kSeMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="gbMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="ccMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="p1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="vrecMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kmrecMr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="drMa" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="kSeMa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:29:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="daMa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:29:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="cdaMa" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="N" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="bMi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="mMi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="lMi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="cCD4CD8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="apop" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="drMi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="sCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="drCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="gbCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="cc1CD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="ngbCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k2CD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="kmrecCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="vrecCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="CD4n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="ndCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="kSedCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kSeCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="drCD8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="sCD8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="gbCD8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="cc1CD8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k2CD8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="ncompCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kcompCD4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="compCD8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="w1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="drSe" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="pSe" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="ccSe" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="drSi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="pSi" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Mr_Source" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:46:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0045123"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7512" name="v" value="300000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Mr_Growth_Boost" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:46:34Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_7560" name="ccMr" value="2.5e+07"/>
          <Constant key="Parameter_7561" name="p1" value="0.65"/>
          <Constant key="Parameter_7563" name="gbMr" value="1.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Mr_Recruitment" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:49:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0045123"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7568" name="vrecMr" value="1"/>
          <Constant key="Parameter_7562" name="kmrecMr" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Ma_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:51:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C40846"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7564" name="daMa" value="40"/>
          <Constant key="Parameter_7569" name="cdaMA" value="3e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Mr_Infection" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:53:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C2890"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7567" name="iMr" value="0.1"/>
          <Constant key="Parameter_7570" name="cSeMri" value="600000"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Mr_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:54:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0042116"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7571" name="aMr" value="100"/>
          <Constant key="Parameter_7566" name="cSeMr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Se_Killing_Mr" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:56:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7503" name="k1" value="5e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Mr_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:56:47Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_7502" name="k1" value="0.011"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="CD4_Source" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:57:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0045123"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7559" name="v" value="490000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="CD4_Growth_Boost" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:57:22Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_7557" name="gbCD4" value="0.19"/>
          <Constant key="Parameter_7553" name="cc1CD4" value="8.2e+07"/>
          <Constant key="Parameter_7537" name="ngbCD4" value="2"/>
          <Constant key="Parameter_7540" name="k2CD4" value="8.7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="CD4_Recruitment" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T10:59:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0045123"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7518" name="vrecCD4" value="100"/>
          <Constant key="Parameter_5066" name="kmrecCD4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Se_Killing_CD4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:01:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="k1" value="1e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="CD4_Interaction_Naive_Se" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:01:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C97350"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5067" name="CD4n" value="0.4"/>
          <Constant key="Parameter_5040" name="ndCD4" value="8"/>
          <Constant key="Parameter_5042" name="kSedCD4" value="4200"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="CD4_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:17:57Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5068" name="k1" value="0.016"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="CD8_Source" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:18:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0045123"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5077" name="v" value="430000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="CD8_Growth_Boost" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:20:58Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_7493" name="gbCD8" value="1.44"/>
          <Constant key="Parameter_7521" name="cc1CD8" value="1.3e+07"/>
          <Constant key="Parameter_7555" name="k2CD8" value="4.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="CD8_Competition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:25:15Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7514" name="compCD8" value="0.85"/>
          <Constant key="Parameter_7500" name="w1" value="1e-25"/>
          <Constant key="Parameter_7572" name="ncompcd8" value="0.5"/>
          <Constant key="Parameter_7519" name="kcompCD4" value="3.4e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="CD8_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:26:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7486" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Ma_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:28:26Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_7495" name="k1" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
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
      <Reaction key="Reaction_19" name="Se_Killing_Ma" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:29:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7501" name="k1" value="2.6e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Mi_Bursting" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:46:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C129692"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7516" name="bMi" value="0.4"/>
          <Constant key="Parameter_7573" name="mMi" value="2"/>
          <Constant key="Parameter_7510" name="N" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Mi_Lysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:50:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C129692"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7515" name="lMi" value="0.8"/>
          <Constant key="Parameter_7517" name="cCD4CD8" value="10"/>
          <Constant key="Parameter_7577" name="apop" value="0.7"/>
          <Constant key="Parameter_7522" name="N" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Mi_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:55:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7513" name="k1" value="0.011"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Se_Proliferation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:56:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7550" name="pSe" value="35"/>
          <Constant key="Parameter_7546" name="ccSe" value="500000"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Se_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:59:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7565" name="k1" value="27.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Si_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T11:59:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7469" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Si_Proliferation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:00:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7489" name="pSi" value="4.1"/>
          <Constant key="Parameter_7487" name="N" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Mr_Infection_Si" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C2890"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7488" name="iMr" value="0.1"/>
          <Constant key="Parameter_7482" name="cSeMr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Mi_Lysis_Si" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T12:40:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C129692"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7415" name="lMi" value="0.8"/>
          <Constant key="Parameter_7418" name="cCD4CD8" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[CD4]" value="9000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[CD8]" value="7000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[Mr]" value="9000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[Ma]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[Mi]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[Se]" value="200" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[Si]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[CD4rec]" value="27000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[Mrrec]" value="20000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[sMr]" value="300000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drMr]" value="0.010999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[aMr]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cSeMr]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[iMr]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cSeMri]" value="600000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSeMr]" value="4.9999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[gbMr]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ccMr]" value="25000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[p1]" value="0.65000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[vrecMr]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kmrecMr]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drMa]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSeMa]" value="2.6e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[daMa]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cdaMa]" value="30000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[N]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[bMi]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[mMi]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[lMi]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cCD4CD8]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[apop]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drMi]" value="0.010999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[sCD4]" value="490000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drCD4]" value="0.016" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[gbCD4]" value="0.19" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cc1CD4]" value="82000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ngbCD4]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[k2CD4]" value="8700000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kmrecCD4]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[vrecCD4]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[CD4n]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ndCD4]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSedCD4]" value="4200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSeCD4]" value="1.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drCD8]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[sCD8]" value="430000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[gbCD8]" value="1.4399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cc1CD8]" value="13000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[k2CD8]" value="47000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ncompCD4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kcompCD4]" value="34000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[compCD8]" value="0.84999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[w1]" value="1e-25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drSe]" value="27.800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[pSe]" value="35" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ccSe]" value="500000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drSi]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[pSi]" value="4.0999999999999996" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Source]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Source],ParameterGroup=Parameters,Parameter=v" value="300000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[sMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Growth_Boost]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Growth_Boost],ParameterGroup=Parameters,Parameter=ccMr" value="25000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ccMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Growth_Boost],ParameterGroup=Parameters,Parameter=p1" value="0.65000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Growth_Boost],ParameterGroup=Parameters,Parameter=gbMr" value="1.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[gbMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Recruitment],ParameterGroup=Parameters,Parameter=vrecMr" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[vrecMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Recruitment],ParameterGroup=Parameters,Parameter=kmrecMr" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kmrecMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Ma_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Ma_Deactivation],ParameterGroup=Parameters,Parameter=daMa" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[daMa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Ma_Deactivation],ParameterGroup=Parameters,Parameter=cdaMA" value="30000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cdaMa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Infection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Infection],ParameterGroup=Parameters,Parameter=iMr" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[iMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Infection],ParameterGroup=Parameters,Parameter=cSeMri" value="600000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cSeMri],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Activation],ParameterGroup=Parameters,Parameter=aMr" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[aMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Activation],ParameterGroup=Parameters,Parameter=cSeMr" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cSeMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Killing_Mr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Killing_Mr],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSeMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Death],ParameterGroup=Parameters,Parameter=k1" value="0.010999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Source]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Source],ParameterGroup=Parameters,Parameter=v" value="490000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[sCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Growth_Boost]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Growth_Boost],ParameterGroup=Parameters,Parameter=gbCD4" value="0.19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[gbCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Growth_Boost],ParameterGroup=Parameters,Parameter=cc1CD4" value="82000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cc1CD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Growth_Boost],ParameterGroup=Parameters,Parameter=ngbCD4" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ngbCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Growth_Boost],ParameterGroup=Parameters,Parameter=k2CD4" value="8700000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[k2CD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Recruitment],ParameterGroup=Parameters,Parameter=vrecCD4" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[vrecCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Recruitment],ParameterGroup=Parameters,Parameter=kmrecCD4" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kmrecCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Killing_CD4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Killing_CD4],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSeCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Interaction_Naive_Se]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Interaction_Naive_Se],ParameterGroup=Parameters,Parameter=CD4n" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[CD4n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Interaction_Naive_Se],ParameterGroup=Parameters,Parameter=ndCD4" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ndCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Interaction_Naive_Se],ParameterGroup=Parameters,Parameter=kSedCD4" value="4200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSedCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD4_Death],ParameterGroup=Parameters,Parameter=k1" value="0.016" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Source]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Source],ParameterGroup=Parameters,Parameter=v" value="430000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[sCD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Growth_Boost]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Growth_Boost],ParameterGroup=Parameters,Parameter=gbCD8" value="1.4399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[gbCD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Growth_Boost],ParameterGroup=Parameters,Parameter=cc1CD8" value="13000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cc1CD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Growth_Boost],ParameterGroup=Parameters,Parameter=k2CD8" value="47000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[k2CD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Competition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Competition],ParameterGroup=Parameters,Parameter=compCD8" value="0.84999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[compCD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Competition],ParameterGroup=Parameters,Parameter=w1" value="1e-25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[w1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Competition],ParameterGroup=Parameters,Parameter=ncompcd8" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ncompCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Competition],ParameterGroup=Parameters,Parameter=kcompCD4" value="34000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kcompCD4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[CD8_Death],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drCD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Ma_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Ma_Death],ParameterGroup=Parameters,Parameter=k1" value="0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drMa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Killing_Ma]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Killing_Ma],ParameterGroup=Parameters,Parameter=k1" value="2.6e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[kSeMa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Bursting]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Bursting],ParameterGroup=Parameters,Parameter=bMi" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[bMi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Bursting],ParameterGroup=Parameters,Parameter=mMi" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[mMi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Bursting],ParameterGroup=Parameters,Parameter=N" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis],ParameterGroup=Parameters,Parameter=lMi" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[lMi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis],ParameterGroup=Parameters,Parameter=cCD4CD8" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cCD4CD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis],ParameterGroup=Parameters,Parameter=apop" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[apop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis],ParameterGroup=Parameters,Parameter=N" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Death],ParameterGroup=Parameters,Parameter=k1" value="0.010999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drMi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Proliferation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Proliferation],ParameterGroup=Parameters,Parameter=pSe" value="35" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[pSe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Proliferation],ParameterGroup=Parameters,Parameter=ccSe" value="500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[ccSe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Se_Death],ParameterGroup=Parameters,Parameter=k1" value="27.800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drSe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Si_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Si_Death],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[drSi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Si_Proliferation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Si_Proliferation],ParameterGroup=Parameters,Parameter=pSi" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[pSi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Si_Proliferation],ParameterGroup=Parameters,Parameter=N" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Infection_Si]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Infection_Si],ParameterGroup=Parameters,Parameter=iMr" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[iMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mr_Infection_Si],ParameterGroup=Parameters,Parameter=cSeMr" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cSeMr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis_Si]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis_Si],ParameterGroup=Parameters,Parameter=lMi" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[lMi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Reactions[Mi_Lysis_Si],ParameterGroup=Parameters,Parameter=cCD4CD8" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Values[cCD4CD8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
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
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 9000000 200 9000000 100 7000000 100 0 20000000 27000000 1 300000 0.010999999999999999 100 1 0.10000000000000001 600000 4.9999999999999998e-08 1.2 25000000 0.65000000000000002 1 1000 0.080000000000000002 2.6e-07 40 30000000 30 0.40000000000000002 2 0.80000000000000004 10 0.69999999999999996 0.010999999999999999 490000 0.016 0.19 82000000 2 8700000 1 100 0.40000000000000002 8 4200 1.0000000000000001e-09 0.001 430000 1.4399999999999999 13000000 47000000 0.5 34000000 0.84999999999999998 1e-25 27.800000000000001 35 500000 0.050000000000000003 4.0999999999999996 
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
        <Parameter name="StepSize" type="float" value="0.040000000000000001"/>
        <Parameter name="Duration" type="float" value="40"/>
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
    <PlotSpecification name="Schokker2013_Figure_4_B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CD4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue,Vector=Compartments[compartment],Vector=Metabolites[CD4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="ms.xml">
    <SBMLMap SBMLid="CD4" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="CD4_Death" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="CD4_Growth_Boost" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="CD4_Interaction_Naive_Se" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="CD4_Recruitment" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="CD4_Source" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="CD4n" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="CD4rec" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="CD8" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="CD8_Competition" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="CD8_Death" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="CD8_Growth_Boost" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="CD8_Source" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Function_for_CD4_Growth_Boost" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_CD4_Interaction_Naive_Se" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_CD4_Recruitment" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_CD8_Competition" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_CD8_Growth_Boost" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_Ma_Deactivation" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_Mi_Bursting" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_Mi_Lysis" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Function_for_Mi_Lysis_Si" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="Function_for_Mr_Activation" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_Mr_Growth_Boost" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_Mr_Infection" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_Mr_Infection_Si" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="Function_for_Mr_Recruitment" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_Se_Proliferation" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="Function_for_Si_Proliferation" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Ma" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Ma_Deactivation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Ma_Death" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Mi" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Mi_Bursting" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Mi_Death" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Mi_Lysis" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Mi_Lysis_Si" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Mr" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Mr_Activation" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Mr_Death" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Mr_Growth_Boost" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Mr_Infection" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Mr_Infection_Si" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Mr_Recruitment" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Mr_Source" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Mrrec" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="N" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Se" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Se_Death" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Se_Killing_CD4" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Se_Killing_Ma" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Se_Killing_Mr" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Se_Proliferation" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Si" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Si_Death" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Si_Proliferation" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="aMr" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="apop" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="bMi" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="cCD4CD8" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="cSeMr" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="cSeMri" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="cc1CD4" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="cc1CD8" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="ccMr" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="ccSe" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="cdaMa" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="compCD8" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="daMa" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="drCD4" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="drCD8" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="drMa" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="drMi" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="drMr" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="drSe" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="drSi" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="gbCD4" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="gbCD8" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="gbMr" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="iMr" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k2CD4" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k2CD8" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="kSeCD4" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="kSeMa" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kSeMr" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kSedCD4" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="kcompCD4" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="kmrecCD4" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="kmrecMr" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="lMi" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="mMi" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="ncompCD4" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="ndCD4" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="ngbCD4" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="p1" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="pSe" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="pSi" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="sCD4" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="sCD8" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="sMr" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="vrecCD4" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="vrecMr" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="w1" COPASIkey="ModelValue_43"/>
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
