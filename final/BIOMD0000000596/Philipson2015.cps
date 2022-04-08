<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.25 (Build 207) (http://www.copasi.org) at 2019-07-25T10:13:37Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="25" versionDevel="207" copasiSourcesModified="0">
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
    <Function key="Function_44" name="CWP hill_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*s18^n/(shalve^n+s18^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="s18" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="CWP Hill Inhibitor_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka*s7*(1/(1+(s49/ki)^n))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="ki" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="s49" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="s7" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="CWP hill_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*s4^n/(shalve^n+s4^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="s4" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_303" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="CWP hill_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*s34^n/(shalve^n+s34^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="s34" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="CWP Logistic_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r*s18*(1-s18/k)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="r" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="s18" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="1/2 MA_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*s34/2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="s34" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="CWP Hill Inhibitor_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka*TFa*(1/(1+(TFi/ki)^n))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="TFa" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="TFi" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_335" name="ka" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="ki" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="n" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="CWP hill_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*NOD1^n/(shalve^n+NOD1^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="NOD1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="n" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="CWP Hill Inhibitor_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka*RIG*(1/(1+(s49/ki)^n))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="RIG" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_358" name="ka" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="n" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="s49" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="CWP hill_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*MAVS^n/(shalve^n+MAVS^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_368" name="MAVS" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_369" name="n" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="CWP hill_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*IFN^n/(shalve^n+IFN^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_379" name="IFN" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="n" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="CWP hill_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*IRF^n/(shalve^n+IRF^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_390" name="IRF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_391" name="n" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="1/2 MA_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*IFN/2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="IFN" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_402" name="k" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="CWP Hill Inhibitor_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka*s51*(1/(1+(X/ki)^n))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_411" name="X" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_412" name="ka" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="n" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="s51" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="CWP hill_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vmax*CytoE^n/(shalve^n+CytoE^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_421" name="CytoE" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_408" name="n" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="shalve" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="vmax" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="CWP Hill Inhibitor_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka*s4*(1/(1+(X/ki)^n))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_437" name="X" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_438" name="ka" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="n" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_441" name="s4" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="1/2 MA_3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*CytoE/2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="CytoE" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_450" name="k" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Philipson2015 - Innate immune response modulated by NLRX1" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="1" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO%3A0009617"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO%3A0044403"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO%3A0045087"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:doid:DOID%3A3686"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:10090"/>
        <rdf:li rdf:resource="urn:miriam:taxonomy:210"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26367386"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T14:31:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>viji@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Chelliah</vCard:Family>
                <vCard:Given>Vijayalakshmi</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>cwash@vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Philipson</vCard:Family>
                <vCard:Given>Casandra</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Nutritional Immunology and Molecular Medicine Laboratory, Virginia Tech</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2016-03-30T15:13:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL1508180000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:BIOMD0000000596"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bto:BTO%3A0000141"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="1000" sizeY="1000"/>
  <celldesigner:listOfIncludedSpecies>
    <celldesigner:species id="s55" name="VacA">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s53</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>ION</celldesigner:class>
          <celldesigner:name>VacA</celldesigner:name>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s54" name="NLRX1">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s53</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>UNKNOWN</celldesigner:class>
          <celldesigner:name>NLRX1</celldesigner:name>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s69" name="RIGI">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s68</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s70" name="Hpylori">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s68</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
          <celldesigner:name>Hpylori</celldesigner:name>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s72" name="Hpylori">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s71</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
          <celldesigner:name>Hpylori</celldesigner:name>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s73" name="MDA5">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s71</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s75" name="TLR">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s74</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s76" name="Hpylori">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s74</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
          <celldesigner:name>Hpylori</celldesigner:name>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s78" name="Hpylori">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s77</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
          <celldesigner:name>Hpylori</celldesigner:name>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s79" name="NOD1">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title/>
          </head>
          <body/>
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s77</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
  </celldesigner:listOfIncludedSpecies>
  <celldesigner:listOfCompartmentAliases/>
  <celldesigner:listOfComplexSpeciesAliases>
    <celldesigner:complexSpeciesAlias id="csa3" species="s71">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="574.0" y="303.0" w="100.0" h="120.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="100.0" height="120.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa1" species="s53">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="337.0" y="113.0" w="104.0" h="119.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="104.0" height="119.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa2" species="s68">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="571.0" y="166.0" w="100.0" h="120.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="100.0" height="120.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa4" species="s74">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="41.0" y="124.0" w="100.0" h="120.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="100.0" height="120.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa5" species="s77">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="870.0" y="315.0" w="100.0" h="120.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="100.0" height="120.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
  </celldesigner:listOfComplexSpeciesAliases>
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa2" species="s2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="48.0" y="308.5" w="70.0" h="24.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="24.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s9">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="43.0" y="342.50000000000006" w="70.0" h="24.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="24.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s7">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="170.0" y="308.3333333333333" w="70.0" h="24.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="24.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa9" species="s4">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="162.99999999999997" y="343.3333333333333" w="70.0" h="24.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="24.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa13" species="s51">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="167.0" y="269.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa14" species="s14">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="51.0" y="33.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa15" species="s15">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="881.0" y="218.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009999" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa16" species="s17">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="881.0" y="446.66666666666663" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009999" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa17" species="s16">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="774.0" y="443.83333333333326" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009999" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa19" species="s19">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="603.5" y="501.91666666666674" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa20" species="s20">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="725.5" y="501.75" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa21" species="s23">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="669.5" y="554.75" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa22" species="s21">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="582.5" y="551.9166666666667" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa23" species="s24">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="750.25" y="555.4166666666667" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa24" species="s25">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="837.25" y="554.25" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa25" species="s26">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="720.0" y="595.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa26" species="s27">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="721.0" y="664.6666666666666" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa27" species="s28">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="508.0" y="721.5" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa28" species="s29">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="629.0" y="721.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa29" species="s30">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="905.5" y="736.1666666666666" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa30" species="s31">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="780.5" y="736.1666666666666" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa31" species="s32">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="490.5" y="770.1666666666666" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa32" species="s12">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="627.5" y="770.1666666666666" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa33" species="s34">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="153.5" y="400.16666666666663" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa34" species="s33">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="32.5" y="400.16666666666663" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa35" species="s35">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="30.75" y="446.16666666666663" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa36" species="s36">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="151.75" y="446.16666666666663" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa40" species="s39">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="525.5" y="447.91666666666674" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa41" species="s40">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="643.5" y="450.75" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa43" species="s18">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="209.0" y="91.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6666" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa44" species="s43">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="144.5" y="494.16666666666663" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa45" species="s42">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="23.5" y="494.16666666666663" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa46" species="s44">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="20.25" y="539.1666666666666" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa47" species="s45">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="141.25" y="539.1666666666666" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa48" species="s46">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="243.0" y="495.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa49" species="s47">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="237.0" y="541.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa52" species="s49">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="352.0" y="355.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff9900" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa56" species="s13">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="48.625" y="269.125" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa57" species="s52">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="270.5" y="227.5" w="35.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="35.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffcc0033" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa58" species="s54" complexSpeciesAlias="csa1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="354.625" y="129.125" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="17.625" y="16.125"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff9900" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa59" species="s55" complexSpeciesAlias="csa1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="369.625" y="167.125" w="35.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="32.625" y="54.125"/>
        <celldesigner:boxSize width="35.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffcc0033" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa62" species="s58">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="710.0" y="202.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa63" species="s59">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="710.0" y="339.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa64" species="s60">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="574.4615384615385" y="31.192307692307622" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009900" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa65" species="s61">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="680.4615384615385" y="31.02564102564088" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009900" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa66" species="s63">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="840.2115384615385" y="66.30128205128199" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009900" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa67" species="s62">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="717.2115384615385" y="65.46794871794873" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009900" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa68" species="s65">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="815.7115384615385" y="114.88461538461536" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa69" species="s64">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="675.7115384615385" y="112.88461538461536" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa70" species="s66">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="294.0" y="421.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa71" species="s67">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="410.46153846153845" y="419.30769230769226" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa55" species="s18">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="720.5" y="277.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6666" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa72" species="s69" complexSpeciesAlias="csa2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="580.0" y="209.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="9.0" y="43.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa73" species="s70" complexSpeciesAlias="csa2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="586.0" y="178.0" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="15.0" y="12.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6666" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa74" species="s72" complexSpeciesAlias="csa3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="586.0" y="314.0" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="12.0" y="11.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6666" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa75" species="s73" complexSpeciesAlias="csa3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="582.0" y="344.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="8.0" y="41.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa76" species="s75" complexSpeciesAlias="csa4">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="50.0" y="167.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="9.0" y="43.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6699" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa77" species="s76" complexSpeciesAlias="csa4">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="56.0" y="134.0" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="15.0" y="10.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6666" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa78" species="s78" complexSpeciesAlias="csa5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="886.0" y="324.0" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="16.0" y="9.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff6666" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa79" species="s79" complexSpeciesAlias="csa5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="878.0" y="353.0" w="80.0" h="50.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="8.0" y="38.0"/>
        <celldesigner:boxSize width="80.0" height="50.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff009999" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa80" species="s81">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="928.0" y="153.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa81" species="s80">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="788.0" y="151.5" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa82" species="s83">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="632.75" y="823.0" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa83" species="s82">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="495.75" y="823.0" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups/>
  <celldesigner:listOfProteins>
    <celldesigner:protein id="pr2" name="TLR" type="RECEPTOR"/>
    <celldesigner:protein id="pr3" name="NOD1" type="RECEPTOR"/>
    <celldesigner:protein id="pr6" name="RIGI" type="RECEPTOR"/>
    <celldesigner:protein id="pr7" name="MDA5" type="RECEPTOR"/>
  </celldesigner:listOfProteins>
  <celldesigner:listOfGenes/>
  <celldesigner:listOfRNAs>
    <celldesigner:RNA id="rn8" name="TNF_S" type="RNA"/>
    <celldesigner:RNA id="rn9" name="IL6_S" type="RNA"/>
    <celldesigner:RNA id="rn10" name="IL1a_S" type="RNA"/>
    <celldesigner:RNA id="rn11" name="Casp11_S" type="RNA"/>
    <celldesigner:RNA id="rn12" name="IFNb_S" type="RNA"/>
    <celldesigner:RNA id="rn13" name="IL10_S" type="RNA"/>
    <celldesigner:RNA id="rn14" name="IFNa_S" type="RNA"/>
    <celldesigner:RNA id="rn15" name="IFNL_S" type="RNA"/>
    <celldesigner:RNA id="rn16" name="RSAD2_S" type="RNA"/>
    <celldesigner:RNA id="rn17" name="RANTES_S" type="RNA"/>
  </celldesigner:listOfRNAs>
  <celldesigner:listOfAntisenseRNAs/>
  <celldesigner:listOfLayers/>
  <celldesigner:listOfBlockDiagrams/>
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T15:48:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C26055"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="HP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T14:32:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C14289"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>Hpylori</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re31"/>
    <celldesigner:catalyzed reaction="re32"/>
    <celldesigner:catalyzed reaction="re33"/>
    <celldesigner:catalyzed reaction="re34"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="NLRX1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T14:40:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q86UT6"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>NLRX1</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re2"/>
    <celldesigner:catalyzed reaction="re17"/>
    <celldesigner:catalyzed reaction="re27"/>
    <celldesigner:catalyzed reaction="re30"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="CytoL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T14:58:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20464"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>TNF</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="MyD88" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T14:40:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q99836"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>MyD88_R</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re2"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="TRAF6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T14:59:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9Y4K3"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>TRAF6_R</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re4"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="NFkB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-25T14:40:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17380"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>p65p50_R</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re14"/>
    <celldesigner:catalyzed reaction="re15"/>
    <celldesigner:catalyzed reaction="re18"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="IFN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:57:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20493"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="NOD1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:24:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9Y239"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="RIG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:24:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="MAVS" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:25:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="IRF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:24:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:Q14653"/>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:Q92985"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="TFa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:07:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17207"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="CytoE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T14:58:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncim:C20464"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="TFi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-27T11:24:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17207"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="X" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:52:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-28T15:34:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C48923"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="MyD88_a_HP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:35:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5524" name="vmax" value="0.00211822"/>
          <Constant key="Parameter_5526" name="shalve" value="0.00167454"/>
          <Constant key="Parameter_5527" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5526"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_5524"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="MyD88_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:36:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5521" name="k1" value="0.00123453"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5521"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="TRAF_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:38:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5523" name="k1" value="0.0103771"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5523"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="NFkB_a1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:41:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5522" name="ki" value="0.0477912"/>
          <Constant key="Parameter_5525" name="ka" value="1.16764"/>
          <Constant key="Parameter_5528" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_5525"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_5522"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="NFkB_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:43:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5519" name="k1" value="0.0750704"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5519"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="CytoL_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:43:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5517" name="vmax" value="0.096005"/>
          <Constant key="Parameter_5516" name="shalve" value="0.00405"/>
          <Constant key="Parameter_5520" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_5516"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_5517"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="CytoL_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:55:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5518" name="k1" value="0.00608"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5518"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="NLRX1_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:44:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5497" name="k1" value="0.00593"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5497"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="MyD88_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T18:06:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5495" name="vmax" value="0.00283798"/>
          <Constant key="Parameter_5494" name="shalve" value="0.00154977"/>
          <Constant key="Parameter_5498" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_5494"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_5495"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="HP_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-21T11:22:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5496" name="k" value="6.47754"/>
          <Constant key="Parameter_5500" name="r" value="0.0231262"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_5496"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_5500"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="HP_CytoL" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-21T16:23:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3387" name="k" value="0.00457697"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_3387"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="NLRX1_TF" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-25T16:42:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5503" name="ki" value="0.008882"/>
          <Constant key="Parameter_5513" name="ka" value="0.42313"/>
          <Constant key="Parameter_5514" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_5513"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Parameter_5503"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="NFkB_a2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T13:41:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3389" name="vmax" value="0.634738"/>
          <Constant key="Parameter_5499" name="shalve" value="1.88462"/>
          <Constant key="Parameter_5507" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_5499"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Parameter_3389"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="RIG_a_HP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:14:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3388" name="vmax" value="0.0118174"/>
          <Constant key="Parameter_5501" name="shalve" value="0.0014314"/>
          <Constant key="Parameter_3386" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5501"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_3388"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="RIG_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:26:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5506" name="k1" value="0.00103772"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5506"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="MAVS_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:15:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5510" name="ki" value="0.0334969"/>
          <Constant key="Parameter_5505" name="ka" value="0.00747772"/>
          <Constant key="Parameter_5509" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Parameter_5505"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_5510"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="MAVS_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:26:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5508" name="k1" value="0.001592"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5508"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="IRF_a1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:17:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5511" name="vmax" value="0.0062174"/>
          <Constant key="Parameter_5512" name="shalve" value="1.44358"/>
          <Constant key="Parameter_5502" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_5512"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Parameter_5511"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="IRF_a2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:18:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5504" name="vmax" value="0.0980063"/>
          <Constant key="Parameter_5515" name="shalve" value="9.6499"/>
          <Constant key="Parameter_5529" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_5515"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Parameter_5504"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="IRF_a3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:19:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5530" name="vmax" value="0.301374"/>
          <Constant key="Parameter_5625" name="shalve" value="44.7674"/>
          <Constant key="Parameter_5623" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_5625"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_5530"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="IRF_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:34:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5624" name="k1" value="0.00478922"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5624"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="IFN_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:27:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5532" name="vmax" value="0.489838"/>
          <Constant key="Parameter_5531" name="shalve" value="49.9288"/>
          <Constant key="Parameter_5626" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Parameter_5531"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Parameter_5532"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="IFN_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:34:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5533" name="k1" value="0.00523856"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5533"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="NOD_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:28:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5534" name="vmax" value="0.0066234"/>
          <Constant key="Parameter_5538" name="shalve" value="0.00178531"/>
          <Constant key="Parameter_5536" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5538"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_5534"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="NOD_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:29:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5535" name="k1" value="0.00122637"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5535"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="HP_IFN" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-29T16:30:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5539" name="k" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_5539"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="TRAF_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-21T15:33:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5537" name="ki" value="0.0881285"/>
          <Constant key="Parameter_5541" name="ka" value="0.739178"/>
          <Constant key="Parameter_5543" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_5541"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Parameter_5537"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="TFa_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T14:56:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5544" name="vmax" value="0.0205163"/>
          <Constant key="Parameter_5540" name="shalve" value="0.798454"/>
          <Constant key="Parameter_5542" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_5540"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_5544"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="TFa_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:11:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5547" name="k1" value="0.00830409"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5547"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="TFi_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T14:57:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5548" name="vmax" value="0.0902778"/>
          <Constant key="Parameter_5549" name="shalve" value="3.08354"/>
          <Constant key="Parameter_5545" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Parameter_5549"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Parameter_5548"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="TFi_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:11:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5546" name="k1" value="0.032462"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5546"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="CytoE_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:01:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5550" name="ki" value="0.0480683"/>
          <Constant key="Parameter_5552" name="ka" value="12.2028"/>
          <Constant key="Parameter_5551" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_5552"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Parameter_5550"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="CytoE_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:08:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5553" name="k1" value="0.0367629"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5553"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="X_a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:51:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5554" name="vmax" value="0.0463933"/>
          <Constant key="Parameter_5555" name="shalve" value="0.003976"/>
          <Constant key="Parameter_5556" name="n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_5555"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_5554"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="X_d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-04T15:52:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5557" name="k1" value="0.00222793"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5557"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="HP_CytoE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-02T13:07:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="3"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5558" name="k" value="0.00015"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_5558"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[HP]" value="4.4000000000000004" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[NLRX1]" value="0.90000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[CytoL]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[MyD88]" value="0.90000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[TRAF6]" value="0.90000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[NFkB]" value="0.90000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[IFN]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[NOD1]" value="0.90000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[RIG]" value="0.90000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[MAVS]" value="0.59999999999999998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[IRF]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[TFa]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[CytoE]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[TFi]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[X]" value="1" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a_HP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a_HP],ParameterGroup=Parameters,Parameter=vmax" value="0.0021182232718034099" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a_HP],ParameterGroup=Parameters,Parameter=shalve" value="0.0016745398403240699" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a_HP],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_d],ParameterGroup=Parameters,Parameter=k1" value="0.00123453" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TRAF_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TRAF_d],ParameterGroup=Parameters,Parameter=k1" value="0.010377127599999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a1],ParameterGroup=Parameters,Parameter=ki" value="0.047791180000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a1],ParameterGroup=Parameters,Parameter=ka" value="1.1676376672" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a1],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_d],ParameterGroup=Parameters,Parameter=k1" value="0.075070429029999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoL_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoL_a],ParameterGroup=Parameters,Parameter=vmax" value="0.096004999999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoL_a],ParameterGroup=Parameters,Parameter=shalve" value="0.0040499999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoL_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoL_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoL_d],ParameterGroup=Parameters,Parameter=k1" value="0.0060800000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NLRX1_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NLRX1_d],ParameterGroup=Parameters,Parameter=k1" value="0.0059300000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a],ParameterGroup=Parameters,Parameter=vmax" value="0.0028379848241733398" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a],ParameterGroup=Parameters,Parameter=shalve" value="0.0015497650230596599" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MyD88_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_a],ParameterGroup=Parameters,Parameter=k" value="6.4775412234690499" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_a],ParameterGroup=Parameters,Parameter=r" value="0.023126230899999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_CytoL]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_CytoL],ParameterGroup=Parameters,Parameter=k" value="0.0045769668797600001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NLRX1_TF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NLRX1_TF],ParameterGroup=Parameters,Parameter=ki" value="0.0088820009550000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NLRX1_TF],ParameterGroup=Parameters,Parameter=ka" value="0.42313000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NLRX1_TF],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a2],ParameterGroup=Parameters,Parameter=vmax" value="0.63473841220000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a2],ParameterGroup=Parameters,Parameter=shalve" value="1.8846156538000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NFkB_a2],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[RIG_a_HP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[RIG_a_HP],ParameterGroup=Parameters,Parameter=vmax" value="0.011817388750361099" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[RIG_a_HP],ParameterGroup=Parameters,Parameter=shalve" value="0.00143140224694888" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[RIG_a_HP],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[RIG_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[RIG_d],ParameterGroup=Parameters,Parameter=k1" value="0.0010377234048544999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MAVS_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MAVS_a],ParameterGroup=Parameters,Parameter=ki" value="0.033496867888" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MAVS_a],ParameterGroup=Parameters,Parameter=ka" value="0.0074777226389999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MAVS_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MAVS_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[MAVS_d],ParameterGroup=Parameters,Parameter=k1" value="0.0015920000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a1],ParameterGroup=Parameters,Parameter=vmax" value="0.0062173999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a1],ParameterGroup=Parameters,Parameter=shalve" value="1.4435800000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a1],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a2],ParameterGroup=Parameters,Parameter=vmax" value="0.098006266499999994" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a2],ParameterGroup=Parameters,Parameter=shalve" value="9.6499013514377499" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a2],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a3],ParameterGroup=Parameters,Parameter=vmax" value="0.30137407572000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a3],ParameterGroup=Parameters,Parameter=shalve" value="44.767412875576397" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_a3],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IRF_d],ParameterGroup=Parameters,Parameter=k1" value="0.0047892214039999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IFN_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IFN_a],ParameterGroup=Parameters,Parameter=vmax" value="0.48983781150819999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IFN_a],ParameterGroup=Parameters,Parameter=shalve" value="49.928777820000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IFN_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IFN_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[IFN_d],ParameterGroup=Parameters,Parameter=k1" value="0.0052385574847411296" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NOD_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NOD_a],ParameterGroup=Parameters,Parameter=vmax" value="0.0066233960184409997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NOD_a],ParameterGroup=Parameters,Parameter=shalve" value="0.0017853076957159201" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NOD_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NOD_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[NOD_d],ParameterGroup=Parameters,Parameter=k1" value="0.00122637229001114" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_IFN]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_IFN],ParameterGroup=Parameters,Parameter=k" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TRAF_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TRAF_a],ParameterGroup=Parameters,Parameter=ki" value="0.088128454529999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TRAF_a],ParameterGroup=Parameters,Parameter=ka" value="0.73917847062499997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TRAF_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFa_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFa_a],ParameterGroup=Parameters,Parameter=vmax" value="0.020516334641906501" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFa_a],ParameterGroup=Parameters,Parameter=shalve" value="0.79845410165576003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFa_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFa_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFa_d],ParameterGroup=Parameters,Parameter=k1" value="0.0083040902800000007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFi_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFi_a],ParameterGroup=Parameters,Parameter=vmax" value="0.090277819094580602" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFi_a],ParameterGroup=Parameters,Parameter=shalve" value="3.083541152" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFi_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFi_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[TFi_d],ParameterGroup=Parameters,Parameter=k1" value="0.032461964436582197" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoE_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoE_a],ParameterGroup=Parameters,Parameter=ki" value="0.048068331919999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoE_a],ParameterGroup=Parameters,Parameter=ka" value="12.202819999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoE_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoE_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[CytoE_d],ParameterGroup=Parameters,Parameter=k1" value="0.036762940000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[X_a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[X_a],ParameterGroup=Parameters,Parameter=vmax" value="0.046393324999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[X_a],ParameterGroup=Parameters,Parameter=shalve" value="0.0039760000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[X_a],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[X_d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[X_d],ParameterGroup=Parameters,Parameter=k1" value="0.0022279252385039999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_CytoE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Reactions[HP_CytoE],ParameterGroup=Parameters,Parameter=k" value="0.00014999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 4.4000000000000004 1 0.90000000000000002 0.90000000000000002 0.90000000000000002 1 1 0.90000000000000002 0.90000000000000002 0.59999999999999998 0.90000000000000002 1 1 1 1 1 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="12"/>
        <Parameter name="Duration" type="float" value="1200"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
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
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
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
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CytoE]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[CytoE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CytoL]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[CytoL],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NFkB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[NFkB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TRAF6]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Philipson2015 - Innate immune response modulated by NLRX1,Vector=Compartments[default],Vector=Metabolites[TRAF6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="layout_0">
      <Dimensions width="1000" height="1000"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="layout_glyph_0" metabolite="">
          <BoundingBox>
            <Position x="48" y="308.5"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="layout_glyph_1" metabolite="">
          <BoundingBox>
            <Position x="43" y="342.5"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="layout_glyph_2" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="170" y="308.33333333333297"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="layout_glyph_3" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="163" y="343.33333333333297"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="layout_glyph_4" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="167" y="269.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="layout_glyph_5" metabolite="">
          <BoundingBox>
            <Position x="51" y="33"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="layout_glyph_6" metabolite="">
          <BoundingBox>
            <Position x="881" y="218"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="layout_glyph_7" metabolite="">
          <BoundingBox>
            <Position x="881" y="446.66666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="layout_glyph_8" metabolite="">
          <BoundingBox>
            <Position x="774" y="443.83333333333297"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="layout_glyph_9" metabolite="">
          <BoundingBox>
            <Position x="603.5" y="501.91666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="layout_glyph_10" metabolite="">
          <BoundingBox>
            <Position x="725.5" y="501.75"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="layout_glyph_11" metabolite="">
          <BoundingBox>
            <Position x="669.5" y="554.75"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="layout_glyph_12" metabolite="">
          <BoundingBox>
            <Position x="582.5" y="551.91666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="layout_glyph_13" metabolite="">
          <BoundingBox>
            <Position x="750.25" y="555.41666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="layout_glyph_14" metabolite="">
          <BoundingBox>
            <Position x="837.25" y="554.25"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="layout_glyph_15" metabolite="">
          <BoundingBox>
            <Position x="720" y="595.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="layout_glyph_16" metabolite="">
          <BoundingBox>
            <Position x="721" y="664.66666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="layout_glyph_17" metabolite="">
          <BoundingBox>
            <Position x="508" y="721.5"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="layout_glyph_18" metabolite="">
          <BoundingBox>
            <Position x="629" y="721.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="layout_glyph_19" metabolite="">
          <BoundingBox>
            <Position x="905.5" y="736.16666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="layout_glyph_20" metabolite="">
          <BoundingBox>
            <Position x="780.5" y="736.16666666666697"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="layout_glyph_21" metabolite="">
          <BoundingBox>
            <Position x="490.5" y="770.16666666666697"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="layout_glyph_22" metabolite="">
          <BoundingBox>
            <Position x="627.5" y="770.16666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="layout_glyph_23" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="153.5" y="400.16666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="layout_glyph_24" metabolite="">
          <BoundingBox>
            <Position x="32.5" y="400.16666666666703"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="layout_glyph_25" metabolite="">
          <BoundingBox>
            <Position x="30.75" y="446.16666666666703"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="layout_glyph_26" metabolite="">
          <BoundingBox>
            <Position x="151.75" y="446.16666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="layout_glyph_27" metabolite="">
          <BoundingBox>
            <Position x="525.5" y="447.91666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="layout_glyph_28" metabolite="">
          <BoundingBox>
            <Position x="643.5" y="450.75"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="layout_glyph_29" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="209" y="91.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="layout_glyph_30" metabolite="">
          <BoundingBox>
            <Position x="144.5" y="494.16666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="layout_glyph_31" metabolite="">
          <BoundingBox>
            <Position x="23.5" y="494.16666666666703"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="layout_glyph_32" metabolite="">
          <BoundingBox>
            <Position x="20.25" y="539.16666666666697"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="layout_glyph_33" metabolite="">
          <BoundingBox>
            <Position x="141.25" y="539.16666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="layout_glyph_34" metabolite="">
          <BoundingBox>
            <Position x="243" y="495.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_38" name="layout_glyph_35" metabolite="">
          <BoundingBox>
            <Position x="237" y="541.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_39" name="layout_glyph_36" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="352" y="355.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_40" name="layout_glyph_37" metabolite="">
          <BoundingBox>
            <Position x="48.625" y="269.125"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_41" name="layout_glyph_38" metabolite="">
          <BoundingBox>
            <Position x="270.5" y="227.5"/>
            <Dimensions width="35" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_42" name="layout_glyph_39" metabolite="">
          <BoundingBox>
            <Position x="710" y="202"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_43" name="layout_glyph_40" metabolite="">
          <BoundingBox>
            <Position x="710" y="339"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_44" name="layout_glyph_41" metabolite="">
          <BoundingBox>
            <Position x="574.461538461538" y="31.192307692307601"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_45" name="layout_glyph_42" metabolite="">
          <BoundingBox>
            <Position x="680.461538461538" y="31.025641025640901"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_46" name="layout_glyph_43" metabolite="">
          <BoundingBox>
            <Position x="840.211538461538" y="66.301282051282001"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_47" name="layout_glyph_44" metabolite="">
          <BoundingBox>
            <Position x="717.211538461538" y="65.467948717948701"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_48" name="layout_glyph_45" metabolite="">
          <BoundingBox>
            <Position x="815.711538461538" y="114.884615384615"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_49" name="layout_glyph_46" metabolite="">
          <BoundingBox>
            <Position x="675.711538461538" y="112.884615384615"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_50" name="layout_glyph_47" metabolite="">
          <BoundingBox>
            <Position x="294" y="421.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_51" name="layout_glyph_48" metabolite="">
          <BoundingBox>
            <Position x="410.46153846153902" y="419.30769230769198"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_52" name="layout_glyph_49" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="720.5" y="277.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_53" name="layout_glyph_50" metabolite="">
          <BoundingBox>
            <Position x="928" y="153.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_54" name="layout_glyph_51" metabolite="">
          <BoundingBox>
            <Position x="788" y="151.5"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_55" name="layout_glyph_52" metabolite="">
          <BoundingBox>
            <Position x="632.75" y="823"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_56" name="layout_glyph_53" metabolite="">
          <BoundingBox>
            <Position x="495.75" y="823"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_57" name="layout_glyph_54" metabolite="">
          <BoundingBox>
            <Position x="574" y="303"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_58" name="layout_glyph_55" metabolite="">
          <BoundingBox>
            <Position x="337" y="113"/>
            <Dimensions width="104" height="119"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_59" name="layout_glyph_56" metabolite="">
          <BoundingBox>
            <Position x="571" y="166"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_60" name="layout_glyph_57" metabolite="">
          <BoundingBox>
            <Position x="41" y="124"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_61" name="layout_glyph_58" metabolite="">
          <BoundingBox>
            <Position x="870" y="315"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_62" name="layout_glyph_59" reaction="Reaction_0">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_63" name="layout_glyph_60" metaboliteGlyph="Layout_3" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_64" name="layout_glyph_61" metaboliteGlyph="Layout_5" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_65" name="layout_glyph_62" metaboliteGlyph="" role="modifier">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_66" name="layout_glyph_63" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_67" name="layout_glyph_64">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_68" name="layout_glyph_65" metaboliteGlyph="Layout_4" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_69" name="layout_glyph_66" metaboliteGlyph="Layout_6" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_70" name="layout_glyph_67" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_71" name="layout_glyph_68">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_72" name="layout_glyph_69" metaboliteGlyph="Layout_11" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_73" name="layout_glyph_70" metaboliteGlyph="Layout_10" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_74" name="layout_glyph_71" metaboliteGlyph="Layout_61" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_75" name="layout_glyph_72">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_76" name="layout_glyph_73" metaboliteGlyph="Layout_12" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_77" name="layout_glyph_74" metaboliteGlyph="Layout_13" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_78" name="layout_glyph_75" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_79" name="layout_glyph_76" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_80" name="layout_glyph_77">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_81" name="layout_glyph_78" metaboliteGlyph="Layout_15" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_82" name="layout_glyph_79" metaboliteGlyph="Layout_14" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="layout_glyph_80" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_84" name="layout_glyph_81">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_85" name="layout_glyph_82" metaboliteGlyph="Layout_16" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_86" name="layout_glyph_83" metaboliteGlyph="Layout_17" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="layout_glyph_84" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_88" name="layout_glyph_85">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_89" name="layout_glyph_86" metaboliteGlyph="Layout_18" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_90" name="layout_glyph_87" metaboliteGlyph="Layout_19" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_91" name="layout_glyph_88">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_92" name="layout_glyph_89" metaboliteGlyph="Layout_20" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_93" name="layout_glyph_90" metaboliteGlyph="Layout_21" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_94" name="layout_glyph_91" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_95" name="layout_glyph_92" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_96" name="layout_glyph_93">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_97" name="layout_glyph_94" metaboliteGlyph="Layout_23" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_98" name="layout_glyph_95" metaboliteGlyph="Layout_22" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_99" name="layout_glyph_96" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_100" name="layout_glyph_97" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_101" name="layout_glyph_98">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_102" name="layout_glyph_99" metaboliteGlyph="Layout_24" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_103" name="layout_glyph_100" metaboliteGlyph="Layout_25" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_104" name="layout_glyph_101" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_105" name="layout_glyph_102" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_106" name="layout_glyph_103">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_107" name="layout_glyph_104" metaboliteGlyph="Layout_27" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_108" name="layout_glyph_105" metaboliteGlyph="Layout_26" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_109" name="layout_glyph_106" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_110" name="layout_glyph_107">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_111" name="layout_glyph_108" metaboliteGlyph="Layout_28" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_112" name="layout_glyph_109" metaboliteGlyph="Layout_29" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_113" name="layout_glyph_110" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_114" name="layout_glyph_111">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_115" name="layout_glyph_112" metaboliteGlyph="Layout_30" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_116" name="layout_glyph_113" metaboliteGlyph="Layout_31" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_117" name="layout_glyph_114" metaboliteGlyph="" role="modifier">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_118" name="layout_glyph_115" metaboliteGlyph="Layout_57" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_119" name="layout_glyph_116" metaboliteGlyph="Layout_59" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_120" name="layout_glyph_117">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_121" name="layout_glyph_118" metaboliteGlyph="Layout_34" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_122" name="layout_glyph_119" metaboliteGlyph="Layout_33" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_123" name="layout_glyph_120" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_124" name="layout_glyph_121">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_125" name="layout_glyph_122" metaboliteGlyph="Layout_35" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_126" name="layout_glyph_123" metaboliteGlyph="Layout_36" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_127" name="layout_glyph_124" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_128" name="layout_glyph_125" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_129" name="layout_glyph_126">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_130" name="layout_glyph_127" metaboliteGlyph="Layout_36" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_131" name="layout_glyph_128" metaboliteGlyph="Layout_38" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_132" name="layout_glyph_129">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_133" name="layout_glyph_130" metaboliteGlyph="Layout_33" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_134" name="layout_glyph_131" metaboliteGlyph="Layout_37" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_135" name="layout_glyph_132" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_136" name="layout_glyph_133">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_137" name="layout_glyph_134" metaboliteGlyph="Layout_40" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_138" name="layout_glyph_135" metaboliteGlyph="Layout_7" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_139" name="layout_glyph_136" metaboliteGlyph="Layout_60" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_140" name="layout_glyph_137">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_141" name="layout_glyph_138" metaboliteGlyph="Layout_32" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_142" name="layout_glyph_139" metaboliteGlyph="Layout_41" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_143" name="layout_glyph_140">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_144" name="layout_glyph_141" metaboliteGlyph="Layout_58" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_145" name="layout_glyph_142" metaboliteGlyph="Layout_41" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_146" name="layout_glyph_143" metaboliteGlyph="Layout_39" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_147" name="layout_glyph_144">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_148" name="layout_glyph_145" metaboliteGlyph="Layout_44" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_149" name="layout_glyph_146" metaboliteGlyph="Layout_45" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_150" name="layout_glyph_147" metaboliteGlyph="" role="modifier">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_151" name="layout_glyph_148" metaboliteGlyph="Layout_59" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_152" name="layout_glyph_149" metaboliteGlyph="Layout_57" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_153" name="layout_glyph_150">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_154" name="layout_glyph_151" metaboliteGlyph="Layout_47" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_155" name="layout_glyph_152" metaboliteGlyph="Layout_46" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_156" name="layout_glyph_153" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_157" name="layout_glyph_154">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_158" name="layout_glyph_155" metaboliteGlyph="Layout_49" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_159" name="layout_glyph_156" metaboliteGlyph="Layout_48" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_160" name="layout_glyph_157" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_161" name="layout_glyph_158">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_162" name="layout_glyph_159" metaboliteGlyph="Layout_50" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_163" name="layout_glyph_160" metaboliteGlyph="Layout_51" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_164" name="layout_glyph_161" metaboliteGlyph="" role="modifier">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_165" name="layout_glyph_162">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_166" name="layout_glyph_163" metaboliteGlyph="Layout_42" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_167" name="layout_glyph_164" metaboliteGlyph="Layout_59" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_168" name="layout_glyph_165" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_169" name="layout_glyph_166">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_170" name="layout_glyph_167" metaboliteGlyph="Layout_43" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_171" name="layout_glyph_168" metaboliteGlyph="Layout_57" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_172" name="layout_glyph_169" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_173" name="layout_glyph_170">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_174" name="layout_glyph_171" metaboliteGlyph="Layout_8" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_175" name="layout_glyph_172" metaboliteGlyph="Layout_60" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_176" name="layout_glyph_173" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_177" name="layout_glyph_174">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_178" name="layout_glyph_175" metaboliteGlyph="Layout_9" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_179" name="layout_glyph_176" metaboliteGlyph="Layout_61" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_180" name="layout_glyph_177" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_181" name="layout_glyph_178">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_182" name="layout_glyph_179" metaboliteGlyph="Layout_54" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_183" name="layout_glyph_180" metaboliteGlyph="Layout_53" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_184" name="layout_glyph_181" metaboliteGlyph="" role="">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_185" name="layout_glyph_182">
          <BoundingBox>
            <Position x="0" y="0"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_186" name="layout_glyph_183" metaboliteGlyph="Layout_56" role="substrate">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_187" name="layout_glyph_184" metaboliteGlyph="Layout_55" role="product">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_188" name="layout_glyph_185" graphicalObject="Layout_8" text="TLR">
          <BoundingBox>
            <Position x="51" y="33"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_189" name="layout_glyph_186" graphicalObject="Layout_9" text="NOD1">
          <BoundingBox>
            <Position x="881" y="218"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_190" name="layout_glyph_187" graphicalObject="Layout_32" text="Hpylori">
          <BoundingBox>
            <Position x="209" y="91.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_191" name="layout_glyph_188" graphicalObject="Layout_52" text="Hpylori">
          <BoundingBox>
            <Position x="720.5" y="277.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_192" name="layout_glyph_189" graphicalObject="Layout_29" text="IL6">
          <BoundingBox>
            <Position x="151.75" y="446.16666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_193" name="layout_glyph_190" graphicalObject="Layout_37" text="IL1a">
          <BoundingBox>
            <Position x="243" y="495.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_194" name="layout_glyph_191" graphicalObject="Layout_38" text="Casp11">
          <BoundingBox>
            <Position x="237" y="541.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_195" name="layout_glyph_192" graphicalObject="Layout_39" text="NLRX1">
          <BoundingBox>
            <Position x="352" y="355.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_196" name="layout_glyph_193" graphicalObject="Layout_41" text="VacA">
          <BoundingBox>
            <Position x="270.5" y="227.5"/>
            <Dimensions width="35" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_197" name="layout_glyph_194" graphicalObject="Layout_58" text="NLRX1-VacA">
          <BoundingBox>
            <Position x="337" y="113"/>
            <Dimensions width="104" height="119"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_198" name="layout_glyph_195" graphicalObject="Layout_40" text="MyD88_S">
          <BoundingBox>
            <Position x="48.625" y="269.125"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_199" name="layout_glyph_196" graphicalObject="Layout_3" text="TRAF6_S">
          <BoundingBox>
            <Position x="48" y="308.5"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_200" name="layout_glyph_197" graphicalObject="Layout_4" text="p65p50_S">
          <BoundingBox>
            <Position x="43" y="342.5"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_201" name="layout_glyph_198" graphicalObject="Layout_27" text="TNF_S">
          <BoundingBox>
            <Position x="32.5" y="400.16666666666703"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_202" name="layout_glyph_199" graphicalObject="Layout_26" text="TNF">
          <BoundingBox>
            <Position x="153.5" y="400.16666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_203" name="layout_glyph_200" graphicalObject="Layout_28" text="IL6_S">
          <BoundingBox>
            <Position x="30.75" y="446.16666666666703"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_204" name="layout_glyph_201" graphicalObject="Layout_34" text="IL1a_S">
          <BoundingBox>
            <Position x="23.5" y="494.16666666666703"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_205" name="layout_glyph_202" graphicalObject="Layout_35" text="Casp11_S">
          <BoundingBox>
            <Position x="20.25" y="539.16666666666697"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_206" name="layout_glyph_203" graphicalObject="Layout_7" text="MyD88_R">
          <BoundingBox>
            <Position x="167" y="269.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_207" name="layout_glyph_204" graphicalObject="Layout_5" text="TRAF6_R">
          <BoundingBox>
            <Position x="170" y="308.33333333333297"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_208" name="layout_glyph_205" graphicalObject="Layout_6" text="p65p50_R">
          <BoundingBox>
            <Position x="163" y="343.33333333333297"/>
            <Dimensions width="70" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_209" name="layout_glyph_206" graphicalObject="Layout_33" text="IL1a_R">
          <BoundingBox>
            <Position x="144.5" y="494.16666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_210" name="layout_glyph_207" graphicalObject="Layout_36" text="Casp11_R">
          <BoundingBox>
            <Position x="141.25" y="539.16666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_211" name="layout_glyph_208" graphicalObject="Layout_30" text="MAVS_M_S">
          <BoundingBox>
            <Position x="525.5" y="447.91666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_212" name="layout_glyph_209" graphicalObject="Layout_12" text="TRAF3_S">
          <BoundingBox>
            <Position x="603.5" y="501.91666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_213" name="layout_glyph_210" graphicalObject="Layout_13" text="TRAF3_R">
          <BoundingBox>
            <Position x="725.5" y="501.75"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_214" name="layout_glyph_211" graphicalObject="Layout_15" text="IRF3_S">
          <BoundingBox>
            <Position x="582.5" y="551.91666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_215" name="layout_glyph_212" graphicalObject="Layout_14" text="IRF3_R">
          <BoundingBox>
            <Position x="669.5" y="554.75"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_216" name="layout_glyph_213" graphicalObject="Layout_16" text="IRF7_S">
          <BoundingBox>
            <Position x="750.25" y="555.41666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_217" name="layout_glyph_214" graphicalObject="Layout_17" text="IRF7_R">
          <BoundingBox>
            <Position x="837.25" y="554.25"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_218" name="layout_glyph_215" graphicalObject="Layout_18" text="STAT1_S">
          <BoundingBox>
            <Position x="720" y="595.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_219" name="layout_glyph_216" graphicalObject="Layout_19" text="STAT1_R">
          <BoundingBox>
            <Position x="721" y="664.66666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_220" name="layout_glyph_217" graphicalObject="Layout_20" text="IFNb_S">
          <BoundingBox>
            <Position x="508" y="721.5"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_221" name="layout_glyph_218" graphicalObject="Layout_24" text="IL10_S">
          <BoundingBox>
            <Position x="490.5" y="770.16666666666697"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_222" name="layout_glyph_219" graphicalObject="Layout_21" text="IFNB_R">
          <BoundingBox>
            <Position x="629" y="721.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_223" name="layout_glyph_220" graphicalObject="Layout_25" text="IL10_R">
          <BoundingBox>
            <Position x="627.5" y="770.16666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_224" name="layout_glyph_221" graphicalObject="Layout_23" text="IFNa_S">
          <BoundingBox>
            <Position x="780.5" y="736.16666666666697"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_225" name="layout_glyph_222" graphicalObject="Layout_22" text="IFNa_R">
          <BoundingBox>
            <Position x="905.5" y="736.16666666666697"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_226" name="layout_glyph_223" graphicalObject="Layout_11" text="RICK_S">
          <BoundingBox>
            <Position x="774" y="443.83333333333297"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_227" name="layout_glyph_224" graphicalObject="Layout_10" text="RICK_R">
          <BoundingBox>
            <Position x="881" y="446.66666666666703"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_228" name="layout_glyph_225" graphicalObject="Layout_42" text="RIGI">
          <BoundingBox>
            <Position x="710" y="202"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_229" name="layout_glyph_226" graphicalObject="Layout_43" text="MDA5">
          <BoundingBox>
            <Position x="710" y="339"/>
            <Dimensions width="80" height="50"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_230" name="layout_glyph_227" graphicalObject="Layout_44" text="MAVS_P_S">
          <BoundingBox>
            <Position x="574.461538461538" y="31.192307692307601"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_231" name="layout_glyph_228" graphicalObject="Layout_31" text="MAVS_M_R">
          <BoundingBox>
            <Position x="643.5" y="450.75"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_232" name="layout_glyph_229" graphicalObject="Layout_45" text="MAVS_P_R">
          <BoundingBox>
            <Position x="680.461538461538" y="31.025641025640901"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_233" name="layout_glyph_230" graphicalObject="Layout_47" text="IRF1_S">
          <BoundingBox>
            <Position x="717.211538461538" y="65.467948717948701"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_234" name="layout_glyph_231" graphicalObject="Layout_46" text="IRF1_R">
          <BoundingBox>
            <Position x="840.211538461538" y="66.301282051282001"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_235" name="layout_glyph_232" graphicalObject="Layout_49" text="IFNL_S">
          <BoundingBox>
            <Position x="675.711538461538" y="112.884615384615"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_236" name="layout_glyph_233" graphicalObject="Layout_48" text="IFNL_R">
          <BoundingBox>
            <Position x="815.711538461538" y="114.884615384615"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_237" name="layout_glyph_234" graphicalObject="Layout_50" text="ROS_S">
          <BoundingBox>
            <Position x="294" y="421.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_238" name="layout_glyph_235" graphicalObject="Layout_51" text="ROS">
          <BoundingBox>
            <Position x="410.46153846153902" y="419.30769230769198"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_239" name="layout_glyph_236" graphicalObject="Layout_59" text="RIGI-HP">
          <BoundingBox>
            <Position x="571" y="166"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_240" name="layout_glyph_237" graphicalObject="Layout_57" text="MDA5-HP">
          <BoundingBox>
            <Position x="574" y="303"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_241" name="layout_glyph_238" graphicalObject="Layout_60" text="TLR_HP">
          <BoundingBox>
            <Position x="41" y="124"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_242" name="layout_glyph_239" graphicalObject="Layout_61" text="NOD1-HP">
          <BoundingBox>
            <Position x="870" y="315"/>
            <Dimensions width="100" height="120"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_243" name="layout_glyph_240" graphicalObject="Layout_54" text="RSAD2_S">
          <BoundingBox>
            <Position x="788" y="151.5"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_244" name="layout_glyph_241" graphicalObject="Layout_53" text="RSAD2_R">
          <BoundingBox>
            <Position x="928" y="153.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_245" name="layout_glyph_242" graphicalObject="Layout_56" text="RANTES_S">
          <BoundingBox>
            <Position x="495.75" y="823"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_246" name="layout_glyph_243" graphicalObject="Layout_55" text="RANTES_R">
          <BoundingBox>
            <Position x="632.75" y="823"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#ff6699"/>
            <ColorDefinition id="ColorDefinition_1" value="#009999"/>
            <ColorDefinition id="ColorDefinition_2" value="#33ffcc"/>
            <ColorDefinition id="ColorDefinition_3" value="#66ff66"/>
            <ColorDefinition id="ColorDefinition_4" value="#cccccc7f"/>
            <ColorDefinition id="ColorDefinition_5" value="#ff6666"/>
            <ColorDefinition id="ColorDefinition_6" value="#ff9900"/>
            <ColorDefinition id="ColorDefinition_7" value="#cc0033"/>
            <ColorDefinition id="ColorDefinition_8" value="#009900"/>
            <ColorDefinition id="ColorDefinition_9" value="#f7f7f7"/>
          </ListOfColorDefinitions>
          <ListOfLineEndings>
            <LineEnding id="modifier_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="100%" y="50%"/>
                    <Element x="50%" y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="inhibitor_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="-5"/>
                <Dimensions width="3" height="10"/>
              </BoundingBox>
              <Group text-anchor="start" vtext-anchor="top">
                <Rectangle stroke-width="1" fill="#000000" x="0" y="0" width="100%" height="100%"/>
              </Group>
            </LineEnding>
            <LineEnding id="activator_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="catalysis_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" cx="5" cy="5" rx="5" ry="5"/>
              </Group>
            </LineEnding>
            <LineEnding id="product_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group text-anchor="start" vtext-anchor="top">
                <Polygon fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
          </ListOfLineEndings>
          <ListOfStyles>
            <Style key="LocalStyle_0" typeList="REACTIONGLYPH SPECIESREFERENCEGLYPH">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_1" roleList="modifier">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="modifier_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_2" roleList="inhibitor">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="inhibitor_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_3" roleList="activator">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="activator_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_4" keyList="Layout_100 Layout_104 Layout_105 Layout_109 Layout_113 Layout_118 Layout_119 Layout_123 Layout_127 Layout_128 Layout_135 Layout_139 Layout_151 Layout_152 Layout_156 Layout_160 Layout_168 Layout_172 Layout_176 Layout_180 Layout_184 Layout_66 Layout_70 Layout_74 Layout_78 Layout_79 Layout_83 Layout_87 Layout_94 Layout_95 Layout_99">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_5">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_6" roleList="product sideproduct">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_7" roleList="sidesubstrate substrate">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_8" keyList="Layout_188">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_189">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_190">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_191">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_192">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_193">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_194">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_195">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_196">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_197">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_198">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_199">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_200">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_201">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_202">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_203">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_204">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_205">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_206">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_207">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_208">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_209">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_210">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_31" keyList="Layout_211">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_32" keyList="Layout_212">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_33" keyList="Layout_213">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_34" keyList="Layout_214">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_35" keyList="Layout_215">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_36" keyList="Layout_216">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_37" keyList="Layout_217">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_38" keyList="Layout_218">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_39" keyList="Layout_219">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_40" keyList="Layout_220">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_41" keyList="Layout_221">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_42" keyList="Layout_222">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_43" keyList="Layout_223">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_44" keyList="Layout_224">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_45" keyList="Layout_225">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_46" keyList="Layout_226">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_47" keyList="Layout_227">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_48" keyList="Layout_228">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_49" keyList="Layout_229">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_50" keyList="Layout_230">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_51" keyList="Layout_231">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_52" keyList="Layout_232">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_53" keyList="Layout_233">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_54" keyList="Layout_234">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_55" keyList="Layout_235">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_56" keyList="Layout_236">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_57" keyList="Layout_237">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_58" keyList="Layout_238">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_59" keyList="Layout_239">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_60" keyList="Layout_240">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_61" keyList="Layout_241">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_62" keyList="Layout_242">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_63" keyList="Layout_243">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_64" keyList="Layout_244">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_65" keyList="Layout_245">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_66" keyList="Layout_246">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_67" keyList="Layout_3">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition" cx="35" cy="12" rx="35" ry="12"/>
              </Group>
            </Style>
            <Style key="LocalStyle_68" keyList="Layout_4">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition" cx="35" cy="12" rx="35" ry="12"/>
              </Group>
            </Style>
            <Style key="LocalStyle_69" keyList="Layout_5">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition" cx="35" cy="12" rx="35" ry="12"/>
              </Group>
            </Style>
            <Style key="LocalStyle_70" keyList="Layout_6">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition" cx="35" cy="12" rx="35" ry="12"/>
              </Group>
            </Style>
            <Style key="LocalStyle_71" keyList="Layout_7">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_72" keyList="Layout_8">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_73" keyList="Layout_9">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_1">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_74" keyList="Layout_10">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_1" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_75" keyList="Layout_11">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_1" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_76" keyList="Layout_12">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_77" keyList="Layout_13">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_78" keyList="Layout_14">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_79" keyList="Layout_15">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_80" keyList="Layout_16">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_81" keyList="Layout_17">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_82" keyList="Layout_18">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_83" keyList="Layout_19">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_84" keyList="Layout_20">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_85" keyList="Layout_21">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_86" keyList="Layout_22">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_87" keyList="Layout_23">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_88" keyList="Layout_24">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_89" keyList="Layout_25">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_90" keyList="Layout_26">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_91" keyList="Layout_27">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_92" keyList="Layout_28">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_93" keyList="Layout_29">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_94" keyList="Layout_30">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_95" keyList="Layout_31">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_2" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_96" keyList="Layout_32">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_97" keyList="Layout_33">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_98" keyList="Layout_34">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_99" keyList="Layout_35">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_100" keyList="Layout_36">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_101" keyList="Layout_37">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_102" keyList="Layout_38">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_103" keyList="Layout_39">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_6" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_104" keyList="Layout_40">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_105" keyList="Layout_41">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_7" cx="17.5" cy="15" rx="15" ry="15"/>
              </Group>
            </Style>
            <Style key="LocalStyle_106" keyList="Layout_42">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_2">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_107" keyList="Layout_43">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_2">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_108" keyList="Layout_44">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_8" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_109" keyList="Layout_45">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_8" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_110" keyList="Layout_46">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_8" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_111" keyList="Layout_47">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_8" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_112" keyList="Layout_48">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_113" keyList="Layout_49">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_114" keyList="Layout_50">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_115" keyList="Layout_51">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_116" keyList="Layout_52">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_117" keyList="Layout_53">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_118" keyList="Layout_54">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_119" keyList="Layout_55">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_120" keyList="Layout_56">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_121" keyList="Layout_57">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="12%" y="0"/>
                    <Element x="88%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="88%" y="100%"/>
                    <Element x="12%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="47" cy="23.5" rx="35" ry="12.5"/>
                <Text stroke="#000000" x="47" y="23.5" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_2">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
                <Text stroke="#000000" x="48" y="66" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
              </Group>
            </Style>
            <Style key="LocalStyle_122" keyList="Layout_58">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="11.4423%" y="0"/>
                    <Element x="88.5577%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="88.5577%" y="100%"/>
                    <Element x="11.4423%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Ellipse fill="ColorDefinition_6" cx="52.625" cy="28.625" rx="35" ry="12.5"/>
                <Text stroke="#000000" x="52.625" y="28.625" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_7" cx="50.125" cy="69.125" rx="15" ry="15"/>
                <Text stroke="#000000" x="50.125" y="69.125" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
              </Group>
            </Style>
            <Style key="LocalStyle_123" keyList="Layout_59">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="12%" y="0"/>
                    <Element x="88%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="88%" y="100%"/>
                    <Element x="12%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_2">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
                <Text stroke="#000000" x="49" y="68" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="50" cy="24.5" rx="35" ry="12.5"/>
                <Text stroke="#000000" x="50" y="24.5" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
              </Group>
            </Style>
            <Style key="LocalStyle_124" keyList="Layout_60">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="12%" y="0"/>
                    <Element x="88%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="88%" y="100%"/>
                    <Element x="12%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
                <Text stroke="#000000" x="49" y="68" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="50" cy="22.5" rx="35" ry="12.5"/>
                <Text stroke="#000000" x="50" y="22.5" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
              </Group>
            </Style>
            <Style key="LocalStyle_125" keyList="Layout_61">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="12%" y="0"/>
                    <Element x="88%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="88%" y="100%"/>
                    <Element x="12%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="51" cy="21.5" rx="35" ry="12.5"/>
                <Text stroke="#000000" x="51" y="21.5" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_1">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="50%" y="15%"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="85%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="0" y="85%"/>
                  </ListOfElements>
                </Polygon>
                <Text stroke="#000000" x="48" y="63" font-size="10" font-family="serif" text-anchor="middle" vtext-anchor="middle">
                  
                </Text>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
    <ListOfGlobalRenderInformation>
      <RenderInformation key="GlobalRenderInformation_0" name="Copasi simple style" backgroundColor="#FFFFFFFF">
        <ListOfColorDefinitions>
          <ColorDefinition id="black" value="#000000"/>
          <ColorDefinition id="white" value="#ffffff"/>
          <ColorDefinition id="transparent" value="#ffffff00"/>
          <ColorDefinition id="EmptySetOutline" value="#808080"/>
          <ColorDefinition id="EmptySetGradientStart" value="#ffffff"/>
          <ColorDefinition id="EmptySetGradientEnd" value="#d3d3d3"/>
          <ColorDefinition id="CompartmentBorder" value="#e69600b0"/>
          <ColorDefinition id="CloneMarkerColor" value="#ffa500"/>
          <ColorDefinition id="CurveColor" value="#000000a0"/>
          <ColorDefinition id="ModulationCurveColor" value="#0000a0a0"/>
        </ListOfColorDefinitions>
        <ListOfGradientDefinitions>
          <LinearGradient id="cloneMarker" spreadMethod="pad" x1="50%" y1="0" x2="50%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="transparent"/>
            <Stop offset="0.75" stop-color="transparent"/>
            <Stop offset="0.76" stop-color="CloneMarkerColor"/>
            <Stop offset="1" stop-color="CloneMarkerColor"/>
          </LinearGradient>
          <LinearGradient id="EmptySetGradient" spreadMethod="pad" x1="0" y1="0" x2="100%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="EmptySetGradientStart"/>
            <Stop offset="100%" stop-color="EmptySetGradientEnd"/>
          </LinearGradient>
        </ListOfGradientDefinitions>
        <ListOfLineEndings>
          <LineEnding id="ActivationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="0" y="0"/>
              <Dimensions width="0" height="0"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="1" fill="white" text-anchor="start" vtext-anchor="top">
              <Ellipse stroke="black" stroke-width="1" cx="50%" cy="50%" rx="50%" ry="50%"/>
            </Group>
          </LineEnding>
          <LineEnding id="TransitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="0" y="0"/>
              <Dimensions width="0" height="0"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="0.001" fill="CurveColor" text-anchor="start" vtext-anchor="top">
              <Polygon fill="CurveColor">
                <ListOfElements>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
          <LineEnding id="ModulationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="0" y="0"/>
              <Dimensions width="0" height="0"/>
            </BoundingBox>
            <Group stroke="ModulationCurveColor" stroke-width="1" fill="ModulationCurveColor" text-anchor="start" vtext-anchor="top">
              <Ellipse cx="50%" cy="50%" rx="45%" ry="45%"/>
            </Group>
          </LineEnding>
          <LineEnding id="InhibitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="0" y="0"/>
              <Dimensions width="0" height="0"/>
            </BoundingBox>
            <Group stroke="black" stroke-width="2" fill="black" text-anchor="start" vtext-anchor="top">
              <Polygon>
                <ListOfElements>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
        </ListOfLineEndings>
        <ListOfStyles>
          <Style key="GlobalStyle_0" roleList="invisible">
            <Group stroke="#ffffff00" stroke-width="0" fill="#ffffff00" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_1" roleList="defaultText" typeList="TEXTGLYPH">
            <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Verdana" text-anchor="middle" vtext-anchor="middle">
            </Group>
          </Style>
          <Style key="GlobalStyle_2" roleList="sidesubstrate substrate" typeList="REACTIONGLYPH">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_3" roleList="SBO-0000169 inhibition inhibitor">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="InhibitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_4" roleList="SBO-0000168 modifier">
            <Group stroke="ModulationCurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ModulationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_5" roleList="SBO-0000172 activator catalysis">
            <Group stroke="CurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ActivationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_6" roleList="product sideproduct" typeList="product sideproduct">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="TransitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_7" roleList="NO-SBO SBO-0000285" typeList="SPECIESGLYPH">
            <Group stroke-width="0" fill="#a0e0a030" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_8" roleList="SBO-0000289" typeList="COMPARTMENTGLYPH">
            <Group stroke="CompartmentBorder" stroke-width="7" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%" rx="20" ry="20"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_9" typeList="ANY">
            <Group stroke="black" stroke-width="0" fill="#f0707070" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
        </ListOfStyles>
      </RenderInformation>
    </ListOfGlobalRenderInformation>
  </ListOfLayouts>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
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
<dcterms:W3CDTF>2019-07-25T09:44:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-25T09:44:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
