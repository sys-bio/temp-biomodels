<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 196) (http://www.copasi.org) at 2018-11-22 12:18:43 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="196" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:00:46Z</dcterms:W3CDTF>
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
    <Function key="Function_8" name="Henri-Michaelis-Menten (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:00:50Z</dcterms:W3CDTF>
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
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:14:30Z</dcterms:W3CDTF>
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
    <Function key="Function_40" name="function for ERG" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:39:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k/(1+(M/J)^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="J" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function 1k 1m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:44:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k* M
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="M" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function for DRG" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:39:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*(P/J)^2/(1+(P/J)^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_267" name="J" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function 1k 2m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:09:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k* M1 * M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="M2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function 2k 1m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:53:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1 * M * k2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_271" name="k2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function for actCycACdk1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:07:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k0 *(k1 + k2 * M1 + k3*M2)*M3*2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="k0" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="M1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="k3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="M2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="M3" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function for actCycACdk2 1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:07:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (1-k0) *(k1 + k2 * M1 + k3*M2)*M3*2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="k0" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="M1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="k3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="M2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="M3" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function for actCycACdk2 2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:20:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (1-k0)*(k1+k2)*M
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="k0" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="M" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function 2k 2m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:53:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1 * M1 * M2 * k2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function for 2k" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T10:17:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1 * k2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="k2" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function for Cdh1 1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:08:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((k1+k2*M)*(1-P)/(k3+1-P))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="k2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_301" name="P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_302" name="k3" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function for cdh1 2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:16:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ( k1 * ( M1 + M2) + k2 * M3)*S/(k3+S)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_305" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="k2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="M3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="S" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_309" name="k3" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function for APCP 1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:58:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1 * M *(1-P)/(k2 + 1 - P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_316" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_314" name="P" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_313" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function for Cdc20A" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:08:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1 * M1 * ( M2 - P) /(k2 + M2 - P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_311" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_318" name="k2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function for Cdc20T" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1 * M1)/(k2 + M2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_321" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="M2" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Weis2014 - Data driven Mammalian Cell Cycle Model" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:reactome:R-HSA-1640170"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:24824602"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1371/journal.pone.0097130"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T09:39:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>ashleythomasxavier@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Xavier</vCard:Family>
            <vCard:Given>Ashley</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T15:30:37</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0007049"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C38794"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This a model from the article:      <br />
    <strong>A Data-Driven, Mathematical Model of Mammalian Cell Cycle Regulation.</strong>
    <br />
          Michael C. Weis, Jayant Avva, James W. Jacobberger, Sree N. Sreenath     <em>PLoS ONE</em>
          2014 May 13:   9(5): e97130    <a href="https://www.ncbi.nlm.nih.gov/pubmed/24824602">24824602</a>
          ,      <br />
    <strong>Abstract:</strong>
    <br />
          Progression of a cell through the division cycle is tightly controlled at different steps to ensure the integrity of genome
replication and partitioning to daughter cells. From published experimental evidence, we propose a molecular
mechanism for control of the cell division cycle in Caulobacter crescentus. The mechanism, which is based on the
synthesis and degradation of three ‘‘master regulator’’ proteins (CtrA, GcrA, and DnaA), is converted into a quantitative
model, in order to study the temporal dynamics of these and other cell cycle proteins. The model accounts for
important details of the physiology, biochemistry, and genetics of cell cycle control in stalked C. crescentus cell. It
reproduces protein time courses in wild-type cells, mimics correctly the phenotypes of many mutant strains, and
predicts the phenotypes of currently uncharacterized mutants. Since many of the proteins involved in regulating the
cell cycle of C. crescentus are conserved among many genera of a-proteobacteria, the proposed mechanism may be
applicable to other species of importance in agriculture and medicine.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not..      <br />
    <br />
          To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
  </p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T15:30:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12958" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="ERG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:27:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11308" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="DRG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:29:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11308" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="ppRB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:31:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06400" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="E2F" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:33:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cco:CCO:42550" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="pE2F" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:37:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cco:CCO:42550" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Rb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:41:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06400" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="E2FRB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:44:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cco:CCO:42550" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035189" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="pE2FRB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:45:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cco:CCO:42550" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06400" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="actCycD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:54:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P24385" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P30279" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="TriD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T10:58:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P30279" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="actCycACdk1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:01:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06493" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20248" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="actCycACdk2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:07:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20248" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P24941" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="actCycB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:16:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q8WWL7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="actCycE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:19:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O96020" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P24864" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="cycA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:23:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20248" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="cycB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:31:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q8WWL7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="cycE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:33:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O96020" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P24864" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="CKI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:35:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P46527" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Cdh1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:36:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P12830" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="preMPF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:41:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P06493" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P14635" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P20248" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="TriA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:43:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot.isoform:P20248" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="APCP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:18:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005680" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000026433" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Cdc20A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:48:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q12834" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Cdc20T" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:48:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q12834" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="mass" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T11:48:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C43246" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="a1frac" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:00:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="FB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="FE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="J15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="J17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="J20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Ja20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Ja25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="JaAPC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Jafb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Jah1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Jatf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Jawee" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Jaweeb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Ji20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Ji25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="JiAPC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="Jifb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Jih1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Jitf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Jiwee" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k17p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="K19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="K19a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="K20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="K21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="K22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="K23a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="K23b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k25p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k25pp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="K26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="K26R" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="ka20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="ka25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kaAPC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kacdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kafab" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kah1p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kah1pp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="kasa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="kase" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="katfpp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="katfppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="katfpppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kaweep" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="kd20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="kdap" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kdapp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="kdbp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kdbpp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="kdbppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="kde2fcdc20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="kde2fcdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="kdep" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kdepp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="kdeppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="kdepppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="kdia" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="kdie" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="kdip" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="kdipp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="kdippp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="kdipppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="ke2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="ki20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="ki25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="kiAPC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="kifb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="kih1pp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="kih1ppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="kitfp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="kitfpp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="kitfppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="kiwee" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="ks20pp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="ksap" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="ksapp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="ksappp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="ksbp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="ksbpp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="ksbppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="ksbpppp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="ksep" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="ksepp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="ksip" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="kweep" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="kweepp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="LA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="LB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="LD" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="LE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="PP1T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="u" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:03:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="k24r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="kiweeb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-28T14:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="v29" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T12:05:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2FRB],Reference=Concentration>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K20],Reference=Value>*((&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycD],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriD],Reference=Concentration>)*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LD],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LA],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LB],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LE],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="v30" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T12:13:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2FRB],Reference=Concentration>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K20],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LD],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycD],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriD],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LA],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LB],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LE],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="v43" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T13:53:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Rb],Reference=Concentration>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K20],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LD],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycD],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriD],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LA],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LB],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LE],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="v44" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T13:57:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[ppRB],Reference=Concentration>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K19a],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[PP1T],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[PP1A],Reference=Value>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K19],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[PP1A],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="v45" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T13:59:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K26R],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2FRB],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="v46" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:00:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2F],Reference=Concentration>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K23a],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K23b],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="v47" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:01:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K22],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2F],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="v48" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:02:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K26],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2F],Reference=Concentration>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Rb],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="v49" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:03:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K26R],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2FRB],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="v50" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:03:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K26],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Rb],Reference=Concentration>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2F],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="v51" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:05:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K22],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2FRB],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="v52" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:05:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2FRB],Reference=Concentration>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K23a],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K23b],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="Vatf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:21:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[katfpp],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[katfppp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[katfpppp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycD],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="Vde" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:24:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdep],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdepp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdeppp],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdepppp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="Vda" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:27:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdap],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdapp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kacdh1],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="TFAB" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:32:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jifb],Reference=Value>/(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kifb],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jafb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kifb],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jifb],Reference=Value>+sqrt((&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kifb],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jafb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kifb],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jifb],Reference=Value>)^2-4*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kifb],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>))*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jifb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="Vsi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:34:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksip],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="Vsb" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:34:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbp],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbpp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TFAB],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbppp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbpppp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2F],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="Vdb" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdbp],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdbpp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdbppp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="Wee1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_122">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T15:07:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jiwee],Reference=Value>/(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiwee],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiweeb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jawee],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiwee],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiweeb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jiwee],Reference=Value>+sqrt((&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiwee],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiweeb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jawee],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiwee],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiweeb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jiwee],Reference=Value>)^2-4*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiwee],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiweeb],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep],Reference=Value>)*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jawee],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="Vwee" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:38:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kweep],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kweepp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Wee1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="Cdc25" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:40:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ji25],Reference=Value>/(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki25],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ja25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki25],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ji25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+sqrt((&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki25],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ja25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki25],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ji25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>)^2-4*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki25],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>)*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ja25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="V25" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T12:12:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k25p],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k25pp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Cdc25],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="Vdi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_126">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:40:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdip],Reference=Value>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdipp],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdippp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdipppp],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="TriE" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:43:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycE],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="freeCK1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_128">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:44:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[CKI],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriA],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TriE],Reference=Value>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriD],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="CdkCycBCK1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:45:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycB],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[preMPF],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="Cdk1PCycB" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_130">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:45:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycB],Reference=Concentration>-&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_131" name="PP1A" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-01T14:46:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[PP1T],Reference=Value>/(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K21],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[FE],Reference=Value>*(&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration>+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration>)+&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[FB],Reference=Value>*&lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration>+1))
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="ERG synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:38:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5073" name="k" value="5.2905"/>
          <Constant key="Parameter_5075" name="J" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="ERG degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:38:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="k1" value="44.0875"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="DRG synthesis through ERG" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5070" name="k" value="2.64525"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="DRG synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:38:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5072" name="k" value="2645.25"/>
          <Constant key="Parameter_5071" name="J" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="DRG degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:38:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5074" name="k1" value="176.35"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="E2FRB complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:49:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5077" name="v" value="90.951"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="E2FRB complex dissociation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5068" name="v" value="176.595"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="double phosphorylation of Rb" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:53:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5066" name="v" value="35.2585"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="dephosphorylation of Rb" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T14:54:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="v" value="4495.62"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="E2FRB complex dissociation 3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:01:40Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5069" name="v" value="9.74404"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="dephosphorylation of E2F" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:02:28Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5067" name="v" value="4.89737"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="E2f phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:03:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5042" name="v" value="0.0185338"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="E2FRB complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:05:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="v" value="1352.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="E2F synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:09:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5039" name="k" value="4.2324"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="E2F degradation through Cdc20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:11:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5043" name="k" value="881.75"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="E2F degradation through Cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:12:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5041" name="k" value="1.7635"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="phosphorylated E2FRB complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:16:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="v" value="18.9195"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="phosphorylated E2FRB complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:16:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5060" name="v" value="2622.54"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="pE2F degradation through Cdc20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:17:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="k" value="881.75"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="pE2F degradation through Cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:17:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5062" name="k" value="1.7635"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="E2FRB dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:38:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5063" name="v" value="1.89195"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="E2FRB phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:38:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5057" name="v" value="0.00715073"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="active cyclin D synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:48:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="k" value="45.851"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="cyclin D activation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:49:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5052" name="k" value="306.292"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="cyclin D activation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:49:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="k" value="176.35"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="active cyclin D inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:52:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5046" name="k1" value="1763.5"/>
          <Constant key="Parameter_5058" name="k2" value="0.554033"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="active cyclin D degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T15:56:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5051" name="k1" value="88.175"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="inactive cyclin D degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:01:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5055" name="k1" value="88.175"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="actCycACdk1 formation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:10:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5050" name="k0" value="0.081283"/>
          <Constant key="Parameter_5054" name="k1" value="16.7533"/>
          <Constant key="Parameter_5053" name="k2" value="0.10581"/>
          <Constant key="Parameter_5056" name="k3" value="20.2802"/>
          <Constant key="Parameter_5061" name="M2" value="1.39801e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="actCycACdk1 formation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:12:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5047" name="k1" value="0.081283"/>
          <Constant key="Parameter_5049" name="k2" value="306.292"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="actCycACdk1 formation 3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:13:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5064" name="k1" value="0.081283"/>
          <Constant key="Parameter_5078" name="k2" value="196.078"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="actCycACdk1 degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:14:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5079" name="k1" value="985.702"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="actCycACdk1 degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:14:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5085" name="k1" value="19733.6"/>
          <Constant key="Parameter_5084" name="k2" value="0.554033"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="actCycACdk2 formation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:17:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5086" name="k0" value="0.081283"/>
          <Constant key="Parameter_5081" name="k1" value="16.7533"/>
          <Constant key="Parameter_5080" name="k2" value="0.10581"/>
          <Constant key="Parameter_5083" name="k3" value="20.2802"/>
          <Constant key="Parameter_5082" name="M2" value="1.39801e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="actCycACdk2 formation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:21:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5087" name="k0" value="0.081283"/>
          <Constant key="Parameter_5091" name="k1" value="306.292"/>
          <Constant key="Parameter_5089" name="k2" value="196.078"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="actCycACdk2 degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:22:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5088" name="k1" value="985.702"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="actCycACdk2 degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:22:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5092" name="k1" value="19733.6"/>
          <Constant key="Parameter_5090" name="k2" value="0.554033"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="cyclinB synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:26:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5094" name="k1" value="7.16092"/>
          <Constant key="Parameter_5096" name="k2" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5096"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="active cyclin B synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:28:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5097" name="k" value="63.89"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="active cyclinB degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:29:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5093" name="k1" value="63.89"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="active cyclinB degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:30:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5095" name="k1" value="282.537"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="active cyclinB degradation 3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-09T16:30:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5100" name="k1" value="17866.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="cyclinE synthesis 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T09:55:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5101" name="k1" value="1.56246"/>
          <Constant key="Parameter_5102" name="k2" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="cyclinE synthesis 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T09:56:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5098" name="k1" value="8.8175"/>
          <Constant key="Parameter_5099" name="k2" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_5099"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="active cyclin E synthesis 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T10:39:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5103" name="k1" value="306.292"/>
          <Constant key="Parameter_5105" name="k2" value="0.026647"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="active cyclin E synthesis 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T10:40:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5104" name="k1" value="196.078"/>
          <Constant key="Parameter_5106" name="k2" value="0.026647"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="active cyclin E degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T10:41:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5107" name="k1" value="45.5697"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="active cyclin E degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T10:42:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5108" name="k1" value="19733.6"/>
          <Constant key="Parameter_5109" name="k2" value="0.554033"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="cyclinA synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T11:51:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5110" name="k0" value="1"/>
          <Constant key="Parameter_5111" name="k1" value="16.7533"/>
          <Constant key="Parameter_5118" name="k2" value="0.10581"/>
          <Constant key="Parameter_5117" name="k3" value="20.2802"/>
          <Constant key="Parameter_5116" name="M2" value="1.39801e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_5110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="cyclinA degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T11:53:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5115" name="k1" value="985.702"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="cyclinB degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T11:55:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5113" name="k1" value="282.537"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="cyclinE degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T11:56:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5112" name="k1" value="45.5697"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="CKI synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T11:58:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5123" name="v" value="390.993"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="CKI degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T11:58:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5120" name="k1" value="306.292"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Cdh1 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:12:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5121" name="k1" value="155.871"/>
          <Constant key="Parameter_5122" name="k2" value="176350"/>
          <Constant key="Parameter_5114" name="k3" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="Cdh1 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5119" name="k1" value="17635"/>
          <Constant key="Parameter_5124" name="k2" value="1763.5"/>
          <Constant key="Parameter_5125" name="k3" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="preMPF synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:26:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5126" name="k" value="17866.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="preMPF degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:27:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5127" name="k1" value="17866.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="preMPF degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:27:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5195" name="k1" value="63.89"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="preMPF degradation 3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:29:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5129" name="k1" value="282.537"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="TriA synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5152" name="k1" value="19733.6"/>
          <Constant key="Parameter_5130" name="k2" value="0.554033"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="TriA degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:51:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5128" name="k1" value="19733.6"/>
          <Constant key="Parameter_5189" name="k2" value="0.554033"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="TriA degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:52:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5190" name="k1" value="196.078"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="TriA degradation 3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:54:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5192" name="k1" value="985.702"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="TriA degradation 4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T13:54:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5133" name="k1" value="306.292"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="APCP synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:01:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5131" name="k1" value="2.33401"/>
          <Constant key="Parameter_5191" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="APCP degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:01:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5134" name="V" value="3.86226"/>
          <Constant key="Parameter_5132" name="Km" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="active Cdc20 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:06:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5138" name="k1" value="292.669"/>
          <Constant key="Parameter_5140" name="k2" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="active Cdc20 degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:10:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5141" name="Km" value="0.005"/>
          <Constant key="Parameter_5135" name="V" value="17.635"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="active Cdc20 degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:11:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5137" name="k1" value="17.635"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="Cdc20T degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:26:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5136" name="k1" value="292.669"/>
          <Constant key="Parameter_5139" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="Cdc20T degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:27:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5142" name="k1" value="17.635"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="mass" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-16T14:28:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5151" name="k" value="0.693937"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[ERG]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[DRG]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[ppRB]" value="8.4792405702054269e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2F]" value="4.3121840713591351e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2F]" value="8.3619653991562084e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Rb]" value="6.4497128578470003e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2FRB]" value="1.6637368545633901e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2FRB]" value="3.2303967985119402e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1]" value="2.2894527723696445e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2]" value="2.5876952909789037e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB]" value="6.0221408570000005e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE]" value="2.7621151254716199e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycA]" value="4.0905391771172504e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycB]" value="1.4243567554976403e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycE]" value="4.3668349996364095e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[CKI]" value="3.6243310476168128e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdh1]" value="6.0062424051375197e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[preMPF]" value="1.4183381074823369e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriA]" value="1.2739477654532082e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[APCP]" value="4.88263136403846e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A]" value="1.6422378117039001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20T]" value="1.64494777508955e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[mass]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[a1frac]" value="0.081282999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[FB]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[FE]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[J15]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[J17]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[J20]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ja20]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ja25]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[JaAPC]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jafb]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jah1]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jatf]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jawee]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jaweeb]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ji20]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ji25]" value="0.031622999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[JiAPC]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jifb]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jih1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jitf]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jiwee]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k10]" value="88.174999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k15]" value="5.2904999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k16]" value="44.087499999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k17]" value="2645.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k17p]" value="2.6452499999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k18]" value="176.34999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K19]" value="35.270000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K19a]" value="440.875" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K20]" value="176.34999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K21]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K22]" value="3.5270000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K23a]" value="0.17635000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K23b]" value="1.7635000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k24]" value="1763.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k25p]" value="61.473999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k25pp]" value="30515.959999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K26]" value="17635" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[K26R]" value="35.270000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k9]" value="45.850999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka20]" value="292.66899999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka25]" value="8.8527699999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaAPC]" value="2.3340100000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kacdh1]" value="264.52499999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kafab]" value="0.29626799999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kah1p]" value="155.8708" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kah1pp]" value="176350" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kasa]" value="19733.57" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kase]" value="19733.57" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[katfpp]" value="58.706919999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[katfppp]" value="97.807239999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[katfpppp]" value="77.639349999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaweep]" value="13.8188" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kd20]" value="17.635000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdap]" value="0.51609400000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdapp]" value="2645.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdbp]" value="0.85318099999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdbpp]" value="176.34999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdbppp]" value="387.97000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kde2fcdc20]" value="881.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kde2fcdh1]" value="1.7635000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdep]" value="1.961012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdepp]" value="1.973357" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdeppp]" value="176.34999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdepppp]" value="3527" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdia]" value="196.07830000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdie]" value="196.07830000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdip]" value="196.07830000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdipp]" value="978.06880000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdippp]" value="1960.837" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdipppp]" value="978.06880000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ke2f]" value="4.2324000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki20]" value="17.635000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki25]" value="35.270000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiAPC]" value="3.8622589999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kifb]" value="9.8274559999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kih1pp]" value="17635" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kih1ppp]" value="1763.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kitfp]" value="48.96181" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kitfpp]" value="19.608360000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kitfppp]" value="19.608360000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiwee]" value="0.14499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ks20pp]" value="105.81" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksap]" value="16.753250000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksapp]" value="0.10581" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksappp]" value="20.280249999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbp]" value="6.7012999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbpp]" value="15.871499999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbppp]" value="1.7635000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksbpppp]" value="0.61722500000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksep]" value="1.5624610000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksepp]" value="8.8175000000000008" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksip]" value="390.99259999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kweep]" value="234.8312" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kweepp]" value="17635" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LA]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LB]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LD]" value="3.2999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[LE]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[PP1T]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[u]" value="0.69393700000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k24r]" value="176.34999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiweeb]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v29]" value="90.95101764020724" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v30]" value="176.59516010627274" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v43]" value="35.258457267405781" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v44]" value="4495.6159790452311" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v45]" value="9.7440429000000019" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v46]" value="0.018533751281465592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v47]" value="4.8973699989999995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v48]" value="1352.4191649674999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v49]" value="18.919533400000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v50]" value="2622.5416344644996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v51]" value="1.8919533400000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v52]" value="0.0071507348828379093" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vatf]" value="7.2318326627217289" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vde]" value="45.569661250271494" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vda]" value="985.70242299999995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TFAB]" value="1.3980075009491588e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vsi]" value="390.99259999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vsb]" value="7.1609242358510512" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdb]" value="282.53703599999994" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Wee1]" value="0.99980356505061585" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vwee]" value="17866.367069667613" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Cdc25]" value="7.9171297925111872e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[V25]" value="63.889988160630793" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi]" value="306.29243656017081" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TriE]" value="0.026646999999999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1]" value="0.55403292000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[CdkCycBCK1]" value="-5.7999999993896267e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Cdk1PCycB]" value="2.3552000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[PP1A]" value="0.29976599607520515" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[ERG synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[ERG synthesis],ParameterGroup=Parameters,Parameter=k" value="5.2904999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[ERG synthesis],ParameterGroup=Parameters,Parameter=J" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[J15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[ERG degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[ERG degradation],ParameterGroup=Parameters,Parameter=k1" value="44.087499999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[DRG synthesis through ERG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[DRG synthesis through ERG],ParameterGroup=Parameters,Parameter=k" value="2.6452499999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k17p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[DRG synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[DRG synthesis],ParameterGroup=Parameters,Parameter=k" value="2645.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[DRG synthesis],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[J17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[DRG degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[DRG degradation],ParameterGroup=Parameters,Parameter=k1" value="176.34999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex dissociation],ParameterGroup=Parameters,Parameter=v" value="90.95101764020724" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v29],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex dissociation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex dissociation 2],ParameterGroup=Parameters,Parameter=v" value="176.59516010627274" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v30],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[double phosphorylation of Rb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[double phosphorylation of Rb],ParameterGroup=Parameters,Parameter=v" value="35.258457267405781" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v43],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[dephosphorylation of Rb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[dephosphorylation of Rb],ParameterGroup=Parameters,Parameter=v" value="4495.6159790452311" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v44],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex dissociation 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex dissociation 3],ParameterGroup=Parameters,Parameter=v" value="9.7440429000000019" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v45],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[dephosphorylation of E2F]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[dephosphorylation of E2F],ParameterGroup=Parameters,Parameter=v" value="4.8973699989999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v47],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2f phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2f phosphorylation],ParameterGroup=Parameters,Parameter=v" value="0.018533751281465592" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v46],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB complex formation],ParameterGroup=Parameters,Parameter=v" value="1352.4191649674999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v48],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2F synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2F synthesis],ParameterGroup=Parameters,Parameter=k" value="4.2324000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ke2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2F degradation through Cdc20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2F degradation through Cdc20],ParameterGroup=Parameters,Parameter=k" value="881.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kde2fcdc20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2F degradation through Cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2F degradation through Cdh1],ParameterGroup=Parameters,Parameter=k" value="1.7635000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kde2fcdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[phosphorylated E2FRB complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[phosphorylated E2FRB complex dissociation],ParameterGroup=Parameters,Parameter=v" value="18.919533400000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v49],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[phosphorylated E2FRB complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[phosphorylated E2FRB complex formation],ParameterGroup=Parameters,Parameter=v" value="2622.5416344644996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v50],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[pE2F degradation through Cdc20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[pE2F degradation through Cdc20],ParameterGroup=Parameters,Parameter=k" value="881.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kde2fcdc20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[pE2F degradation through Cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[pE2F degradation through Cdh1],ParameterGroup=Parameters,Parameter=k" value="1.7635000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kde2fcdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB dephosphorylation],ParameterGroup=Parameters,Parameter=v" value="1.8919533400000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v51],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[E2FRB phosphorylation],ParameterGroup=Parameters,Parameter=v" value="0.0071507348828379093" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v52],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin D synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin D synthesis],ParameterGroup=Parameters,Parameter=k" value="45.850999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclin D activation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclin D activation 1],ParameterGroup=Parameters,Parameter=k" value="306.29243656017081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclin D activation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclin D activation 2],ParameterGroup=Parameters,Parameter=k" value="176.34999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k24r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin D inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin D inactivation],ParameterGroup=Parameters,Parameter=k1" value="1763.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin D inactivation],ParameterGroup=Parameters,Parameter=k2" value="0.55403292000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin D degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin D degradation],ParameterGroup=Parameters,Parameter=k1" value="88.174999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[inactive cyclin D degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[inactive cyclin D degradation],ParameterGroup=Parameters,Parameter=k1" value="88.174999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 1],ParameterGroup=Parameters,Parameter=k0" value="0.081282999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[a1frac],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 1],ParameterGroup=Parameters,Parameter=k1" value="16.753250000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 1],ParameterGroup=Parameters,Parameter=k2" value="0.10581" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksapp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 1],ParameterGroup=Parameters,Parameter=k3" value="20.280249999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksappp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 1],ParameterGroup=Parameters,Parameter=M2" value="1.3980075009491588e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TFAB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 2],ParameterGroup=Parameters,Parameter=k1" value="0.081282999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[a1frac],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 2],ParameterGroup=Parameters,Parameter=k2" value="306.29243656017081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 3],ParameterGroup=Parameters,Parameter=k1" value="0.081282999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[a1frac],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 formation 3],ParameterGroup=Parameters,Parameter=k2" value="196.07830000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdia],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 degradation 1],ParameterGroup=Parameters,Parameter=k1" value="985.70242299999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 degradation 2],ParameterGroup=Parameters,Parameter=k1" value="19733.57" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kasa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk1 degradation 2],ParameterGroup=Parameters,Parameter=k2" value="0.55403292000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 1],ParameterGroup=Parameters,Parameter=k0" value="0.081282999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[a1frac],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 1],ParameterGroup=Parameters,Parameter=k1" value="16.753250000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 1],ParameterGroup=Parameters,Parameter=k2" value="0.10581" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksapp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 1],ParameterGroup=Parameters,Parameter=k3" value="20.280249999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksappp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 1],ParameterGroup=Parameters,Parameter=M2" value="1.3980075009491588e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TFAB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 2],ParameterGroup=Parameters,Parameter=k0" value="0.081282999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[a1frac],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 2],ParameterGroup=Parameters,Parameter=k1" value="306.29243656017081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 formation 2],ParameterGroup=Parameters,Parameter=k2" value="196.07830000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdia],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 degradation 1],ParameterGroup=Parameters,Parameter=k1" value="985.70242299999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 degradation 2],ParameterGroup=Parameters,Parameter=k1" value="19733.57" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kasa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[actCycACdk2 degradation 2],ParameterGroup=Parameters,Parameter=k2" value="0.55403292000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinB synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinB synthesis],ParameterGroup=Parameters,Parameter=k1" value="7.1609242358510512" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vsb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinB synthesis],ParameterGroup=Parameters,Parameter=k2" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin B synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin B synthesis],ParameterGroup=Parameters,Parameter=k" value="63.889988160630793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[V25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclinB degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclinB degradation 1],ParameterGroup=Parameters,Parameter=k1" value="63.889988160630793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[V25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclinB degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclinB degradation 2],ParameterGroup=Parameters,Parameter=k1" value="282.53703599999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclinB degradation 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclinB degradation 3],ParameterGroup=Parameters,Parameter=k1" value="17866.367069667613" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vwee],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE synthesis 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE synthesis 1],ParameterGroup=Parameters,Parameter=k1" value="1.5624610000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksep],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE synthesis 1],ParameterGroup=Parameters,Parameter=k2" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE synthesis 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE synthesis 2],ParameterGroup=Parameters,Parameter=k1" value="8.8175000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksepp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE synthesis 2],ParameterGroup=Parameters,Parameter=k2" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E synthesis 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E synthesis 1],ParameterGroup=Parameters,Parameter=k1" value="306.29243656017081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E synthesis 1],ParameterGroup=Parameters,Parameter=k2" value="0.026646999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TriE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E synthesis 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E synthesis 2],ParameterGroup=Parameters,Parameter=k1" value="196.07830000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdie],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E synthesis 2],ParameterGroup=Parameters,Parameter=k2" value="0.026646999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TriE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E degradation 1],ParameterGroup=Parameters,Parameter=k1" value="45.569661250271494" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E degradation 2],ParameterGroup=Parameters,Parameter=k1" value="19733.57" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kase],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active cyclin E degradation 2],ParameterGroup=Parameters,Parameter=k2" value="0.55403292000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA synthesis],ParameterGroup=Parameters,Parameter=k0" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA synthesis],ParameterGroup=Parameters,Parameter=k1" value="16.753250000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA synthesis],ParameterGroup=Parameters,Parameter=k2" value="0.10581" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksapp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA synthesis],ParameterGroup=Parameters,Parameter=k3" value="20.280249999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ksappp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA synthesis],ParameterGroup=Parameters,Parameter=M2" value="1.3980075009491588e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TFAB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinA degradation],ParameterGroup=Parameters,Parameter=k1" value="985.70242299999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinB degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinB degradation],ParameterGroup=Parameters,Parameter=k1" value="282.53703599999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[cyclinE degradation],ParameterGroup=Parameters,Parameter=k1" value="45.569661250271494" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[CKI synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[CKI synthesis],ParameterGroup=Parameters,Parameter=v" value="390.99259999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vsi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[CKI degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[CKI degradation],ParameterGroup=Parameters,Parameter=k1" value="306.29243656017081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 synthesis],ParameterGroup=Parameters,Parameter=k1" value="155.8708" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kah1p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 synthesis],ParameterGroup=Parameters,Parameter=k2" value="176350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kah1pp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 synthesis],ParameterGroup=Parameters,Parameter=k3" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jah1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 degradation],ParameterGroup=Parameters,Parameter=k1" value="17635" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kih1pp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 degradation],ParameterGroup=Parameters,Parameter=k2" value="1763.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kih1ppp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdh1 degradation],ParameterGroup=Parameters,Parameter=k3" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Jih1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF synthesis],ParameterGroup=Parameters,Parameter=k" value="17866.367069667613" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vwee],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF degradation 1],ParameterGroup=Parameters,Parameter=k1" value="17866.367069667613" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vwee],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF degradation 2],ParameterGroup=Parameters,Parameter=k1" value="63.889988160630793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[V25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF degradation 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[preMPF degradation 3],ParameterGroup=Parameters,Parameter=k1" value="282.53703599999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA synthesis],ParameterGroup=Parameters,Parameter=k1" value="19733.57" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kasa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA synthesis],ParameterGroup=Parameters,Parameter=k2" value="0.55403292000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 1],ParameterGroup=Parameters,Parameter=k1" value="19733.57" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kasa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 1],ParameterGroup=Parameters,Parameter=k2" value="0.55403292000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 2],ParameterGroup=Parameters,Parameter=k1" value="196.07830000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kdia],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 3],ParameterGroup=Parameters,Parameter=k1" value="985.70242299999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[TriA degradation 4],ParameterGroup=Parameters,Parameter=k1" value="306.29243656017081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[APCP synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[APCP synthesis],ParameterGroup=Parameters,Parameter=k1" value="2.3340100000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kaAPC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[APCP synthesis],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[JaAPC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[APCP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[APCP degradation],ParameterGroup=Parameters,Parameter=V" value="3.8622589999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kiAPC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[APCP degradation],ParameterGroup=Parameters,Parameter=Km" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[JiAPC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 synthesis],ParameterGroup=Parameters,Parameter=k1" value="292.66899999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 synthesis],ParameterGroup=Parameters,Parameter=k2" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ja20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 degradation 1],ParameterGroup=Parameters,Parameter=Km" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Ji20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 degradation 1],ParameterGroup=Parameters,Parameter=V" value="17.635000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ki20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[active Cdc20 degradation 2],ParameterGroup=Parameters,Parameter=k1" value="17.635000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kd20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdc20T degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdc20T degradation 1],ParameterGroup=Parameters,Parameter=k1" value="292.66899999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[ka20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdc20T degradation 1],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[J20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdc20T degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[Cdc20T degradation 2],ParameterGroup=Parameters,Parameter=k1" value="17.635000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[kd20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[mass]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Reactions[mass],ParameterGroup=Parameters,Parameter=k" value="0.69393700000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
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
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
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
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 4.3121840713591351e+20 8.3619653991562084e+20 2.7621151254716199e+19 0 2.2894527723696445e+18 6.0221408570000005e+18 1.2739477654532082e+19 6.4497128578470003e+19 2.5876952909789037e+19 1.4183381074823369e+21 1.6637368545633901e+20 0 1.6422378117039001e+20 4.3668349996364095e+19 0 3.6243310476168128e+20 6.0062424051375197e+20 4.0905391771172504e+19 0 4.88263136403846e+20 1.64494777508955e+20 1.4243567554976403e+21 8.4792405702054269e+21 6.0221408570000002e+20 3.2303967985119402e+20 90.95101764020724 176.59516010627274 35.258457267405781 4495.6159790452311 9.7440429000000019 0.018533751281465592 4.8973699989999995 1352.4191649674999 18.919533400000002 2622.5416344644996 1.8919533400000001 0.0071507348828379093 7.2318326627217289 45.569661250271494 985.70242299999995 1.3980075009491588e-06 390.99259999999998 7.1609242358510512 282.53703599999994 0.99980356505061585 17866.367069667613 7.9171297925111872e-05 63.889988160630793 306.29243656017081 0.026646999999999997 0.55403292000000004 -5.7999999993896267e-06 2.3552000000000004 0.29976599607520515 1 0.081282999999999994 2 25 0.10000000000000001 0.29999999999999999 100 0.0050000000000000001 0.0050000000000000001 0.01 0.01 0.14999999999999999 0.01 0.050000000000000003 0.050000000000000003 0.0050000000000000001 0.031622999999999998 0.001 0.001 0.01 0.01 0.050000000000000003 88.174999999999997 5.2904999999999998 44.087499999999999 2645.25 2.6452499999999999 176.34999999999999 35.270000000000003 440.875 176.34999999999999 1 3.5270000000000001 0.17635000000000001 1.7635000000000001 1763.5 61.473999999999997 30515.959999999999 17635 35.270000000000003 45.850999999999999 292.66899999999998 8.8527699999999996 2.3340100000000001 264.52499999999998 0.29626799999999998 155.8708 176350 19733.57 19733.57 58.706919999999997 97.807239999999993 77.639349999999993 13.8188 17.635000000000002 0.51609400000000005 2645.25 0.85318099999999997 176.34999999999999 387.97000000000003 881.75 1.7635000000000001 1.961012 1.973357 176.34999999999999 3527 196.07830000000001 196.07830000000001 196.07830000000001 978.06880000000001 1960.837 978.06880000000001 4.2324000000000002 17.635000000000002 35.270000000000003 3.8622589999999999 9.8274559999999997 17635 1763.5 48.96181 19.608360000000001 19.608360000000001 0.14499999999999999 105.81 16.753250000000001 0.10581 20.280249999999999 6.7012999999999998 15.871499999999999 1.7635000000000001 0.61722500000000002 1.5624610000000001 8.8175000000000008 390.99259999999998 234.8312 17635 30 0.5 3.2999999999999998 10 1 0.69393700000000003 176.34999999999999 5 
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
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="untitled.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="7407"/>
        <Parameter name="StepSize" type="float" value="0.00014851485149999999"/>
        <Parameter name="Duration" type="float" value="1.1000000000000001"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="1"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="1e-6"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
            <Parameter name="StartValue" type="float" value="789817.12910000002"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="38498.860327177412"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycD],Reference=InitialParticleNumber"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[APCP],Reference=InitialParticleNumber"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20T],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[CKI],Reference=InitialParticleNumber"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
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
            <Parameter name="ObjectListType" type="unsignedInteger" value="3"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
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
    <Report key="Report_18" name="Time, Concentrations, Volumes, and Global Quantity Values" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        A table of time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[ERG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[DRG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[ppRB],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2F],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2F],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Rb],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[E2FRB],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[pE2FRB],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycD],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriD],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycACdk2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycE],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycA],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycB],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycE],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[CKI],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[preMPF],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[TriA],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[APCP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[Cdc20T],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[mass],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v29],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v30],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v43],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v44],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v45],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v46],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v47],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v48],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v49],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v50],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v51],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[v52],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vatf],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vde],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vda],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TFAB],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vsi],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vsb],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdb],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Wee1],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vwee],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Cdc25],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[V25],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Vdi],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[TriE],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[freeCK1],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[CdkCycBCK1],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[Cdk1PCycB],Reference=Value"/>
        <Object cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Values[PP1A],Reference=Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Fig 5A" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[cycA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[cycB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5C" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[actCycB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5F" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[actCycB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cycA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cycB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 6" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[actCycB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[actCycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cycA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cycB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Weis2014 - Data driven Mammalian Cell Cycle Model,Vector=Compartments[cell],Vector=Metabolites[cycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Weis2014.xml">
    <SBMLMap SBMLid="APCP" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="CKI" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Cdc20A" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Cdc20T" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Cdc25" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="Cdh1" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Cdk1PCycB" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="CdkCycBCK1" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="DRG" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="E2F" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="E2FRB" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="ERG" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="FB" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="FE" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible" COPASIkey="Function_8"/>
    <SBMLMap SBMLid="J15" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="J17" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="J20" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Ja20" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Ja25" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="JaAPC" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Jafb" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Jah1" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Jatf" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Jawee" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Jaweeb" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Ji20" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Ji25" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="JiAPC" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Jifb" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Jih1" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Jitf" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Jiwee" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="K19" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="K19a" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="K20" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="K21" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="K22" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="K23a" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="K23b" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="K26" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="K26R" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="LA" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="LB" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="LD" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="LE" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="PP1A" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="PP1T" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="Rb" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="TFAB" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="TriA" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="TriD" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="TriE" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="V25" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="Vatf" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="Vda" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="Vdb" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="Vde" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="Vdi" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="Vsb" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="Vsi" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="Vwee" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="Wee1" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="a1frac" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="actCycACdk1" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="actCycACdk2" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="actCycB" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="actCycD" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="actCycE" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="cycA" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="cycB" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="cycE" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="freeCK1" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="function_1k_1m" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_1k_2m" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_2k_1m" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_2k_2m" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_for_2k" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_for_APCP_1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_for_Cdc20A" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_for_Cdc20T" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_for_Cdh1_1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_for_DRG" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_for_ERG" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_for_actCycACdk1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_for_actCycACdk2_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_for_actCycACdk2_2" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_for_cdh1_2" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k17p" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k24" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k24r" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="k25p" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="k25pp" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="ka20" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="ka25" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="kaAPC" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kacdh1" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="kafab" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kah1p" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kah1pp" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kasa" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="kase" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="katfpp" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="katfppp" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="katfpppp" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="kaweep" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kd20" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="kdap" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="kdapp" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kdbp" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="kdbpp" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="kdbppp" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="kde2fcdc20" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="kde2fcdh1" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="kdep" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="kdepp" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="kdeppp" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="kdepppp" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="kdia" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="kdie" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="kdip" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="kdipp" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="kdippp" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="kdipppp" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="ke2f" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="ki20" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="ki25" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="kiAPC" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="kifb" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="kih1pp" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="kih1ppp" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="kitfp" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="kitfpp" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="kitfppp" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="kiwee" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="kiweeb" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="ks20pp" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="ksap" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="ksapp" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="ksappp" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="ksbp" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="ksbpp" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="ksbppp" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="ksbpppp" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="ksep" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="ksepp" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="ksip" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="kweep" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="kweepp" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="mass" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="pE2F" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="pE2FRB" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="ppRB" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="preMPF" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="reaction" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="reaction_13" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="reaction_18" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="reaction_19" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction_20" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="reaction_21" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="reaction_22" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="reaction_23" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="reaction_24" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="reaction_25" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="reaction_26" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="reaction_27" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="reaction_28" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="reaction_29" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction_30" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="reaction_31" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="reaction_32" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="reaction_33" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="reaction_34" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="reaction_35" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="reaction_36" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="reaction_37" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="reaction_38" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="reaction_39" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction_40" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="reaction_41" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="reaction_42" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="reaction_43" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="reaction_44" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="reaction_45" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="reaction_46" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="reaction_47" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="reaction_48" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="reaction_49" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_50" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="reaction_51" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="reaction_52" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="reaction_53" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="reaction_54" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="reaction_55" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="reaction_56" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="reaction_57" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="reaction_58" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="reaction_59" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction_60" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="reaction_61" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="reaction_62" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="reaction_63" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="reaction_64" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="reaction_65" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="reaction_66" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="reaction_67" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="reaction_68" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="reaction_69" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction_70" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="reaction_71" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="reaction_72" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="u" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="v29" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="v30" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="v43" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="v44" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="v45" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="v46" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="v47" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="v48" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="v49" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="v50" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="v51" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="v52" COPASIkey="ModelValue_114"/>
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
