<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2016-04-08 23:47:26 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="16" versionDevel="104" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-07T22:37:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Mass action (reversible with KD)_12_1" type="UserDefined" reversible="true">
      <Expression>
        parameter_4*(species_3*species_20-parameter_22*species_19)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="parameter_22" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="parameter_4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="species_19" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_258" name="species_20" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_254" name="species_3" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Mass action (reversible with KD)_10" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T20:19:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        parameter_4*(species_2*species_20-parameter_22*species_25)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="parameter_22" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="parameter_4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="species_2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="species_20" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="species_25" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Mass action (reversible with KD)_5_4" type="UserDefined" reversible="true">
      <Expression>
        parameter_2*(parameter_7/(parameter_28*parameter_30))*(species_1*species_19-parameter_6*parameter_10*(parameter_28*parameter_30/parameter_7)/parameter_22*species_12)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="parameter_10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="parameter_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="parameter_22" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="parameter_28" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="parameter_30" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="parameter_6" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="parameter_7" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="species_1" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="species_12" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_280" name="species_19" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Mass action (reversible with KD)_5_3" type="UserDefined" reversible="true">
      <Expression>
        parameter_2*(parameter_7/(parameter_28*parameter_30))*(species_1*species_25-parameter_6*parameter_10*(parameter_28*parameter_30/parameter_7)/parameter_22*species_28)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="parameter_10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="parameter_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="parameter_22" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="parameter_28" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="parameter_30" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="parameter_6" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="parameter_7" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="species_1" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="species_25" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="species_28" order="9" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Mass action (reversible with KD)_1_1" type="UserDefined" reversible="true">
      <Expression>
        parameter_1*(parameter_7/(parameter_28*parameter_30))*(species_15*species_1-parameter_5*(parameter_28*parameter_30/parameter_7)*species_4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="parameter_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="parameter_28" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="parameter_30" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="parameter_5" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="parameter_7" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="species_1" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="species_15" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="species_4" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Mass action (reversible with KD)_5_1" type="UserDefined" reversible="true">
      <Expression>
        parameter_1*(parameter_7/(parameter_28*parameter_30))*(species_1*species_16-parameter_5*parameter_9*(parameter_28*parameter_30/parameter_7)/parameter_21*species_5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="parameter_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="parameter_21" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="parameter_28" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="parameter_30" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="parameter_5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="parameter_7" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="parameter_9" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="species_1" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="species_16" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="species_5" order="9" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Mass action (reversible with KD)_9" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T20:17:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        parameter_3*(species_3*species_4-parameter_9*species_7)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="parameter_3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="parameter_9" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="species_3" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_309" name="species_4" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="species_7" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Mass action (reversible with KD)_7" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T20:17:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        parameter_3*(species_3*species_15-parameter_21*species_24)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="parameter_21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="parameter_3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="species_15" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="species_24" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_307" name="species_3" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Mass action (reversible with KD)_6" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T20:17:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        parameter_3*(species_2*species_15-parameter_21*species_16)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="parameter_21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="parameter_3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="species_15" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="species_16" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_318" name="species_2" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Mass action (reversible with KD)_1_2" type="UserDefined" reversible="true">
      <Expression>
        parameter_2*(parameter_7/(parameter_28*parameter_30))*(species_20*species_1-parameter_6*(parameter_28*parameter_30/parameter_7)*species_9)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="parameter_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="parameter_28" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="parameter_30" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="parameter_6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="parameter_7" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="species_1" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_331" name="species_20" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="species_9" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Mass action (reversible with KD)_12" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T20:17:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        parameter_4*(species_2*species_9-parameter_10*species_28)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="parameter_10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="parameter_4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="species_2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_339" name="species_28" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_330" name="species_9" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Mass action (reversible with KD)_8" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T20:17:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        parameter_3*(species_2*species_4-parameter_9*species_5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="parameter_3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="parameter_9" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="species_2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_336" name="species_4" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="species_5" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Mass action (reversible with KD)_5_2" type="UserDefined" reversible="true">
      <Expression>
        parameter_1*(parameter_7/(parameter_28*parameter_30))*(species_1*species_24-parameter_5*parameter_9*(parameter_28*parameter_30/parameter_7)/parameter_21*species_7)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="parameter_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="parameter_21" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="parameter_28" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="parameter_30" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="parameter_5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="parameter_7" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="parameter_9" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="species_1" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_351" name="species_24" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_359" name="species_7" order="9" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Mass action (reversible with KD)_13" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T20:17:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        parameter_4*(species_3*species_9-parameter_10*species_12)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="parameter_10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="parameter_4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="species_12" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_356" name="species_3" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="species_9" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_6" name="Coggins2014 - CXCL12 dependent recruitment of beta arrestin" simulationType="time" timeUnit="s" volumeUnit="dimensionless" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-24T10:37:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0038160"/>
    <CopasiMT:is rdf:resource="urn:miriam:taxonomy:9606"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0038146"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_5" name="Intracellular" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:11:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_117" name="Be" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:23:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P32121" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Be (is) human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="Bp" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:11:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase. Used (has part) Beta-arrestin-2 , and (has part) click beetle luciferase (potentially use (has version)?).
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="C4" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:23:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="C4Be" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:23:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Be is human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="C4Beii" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:23:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular complex (after dissociation of endogenous Beta-arrestin-2) of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="C4Bp" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T15:38:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="C4Bpi" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:24:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="C7" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:24:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="C7Bei" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:26:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Be is human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="C7Beii" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:24:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex (after traficking to late endosomes) of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Be is human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="C7Bp" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:24:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="C7Bpi" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:24:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="L12i" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:11:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P48061" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular
-L12 is human CXCL12, Stromal cell-derived factor-1. It is not labelled.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="R4" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T15:29:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-13T18:21:37</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-(Has Part) of human CXCR4 since it is CXCR4, and (Has Part) of click beetle luciferase (potentially use (has version)?).
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="R4Be" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T15:37:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-Be (is) human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="C7Bpii" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_151">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:24:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex (after traficking to late endosomes) of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_153" name="R7Bpii" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_153">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T21:04:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular receptor (after dissociation of Beta-arrestin-2 tagged with C-terminal of click beetle luciferase) of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="R7Bp" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_155">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T21:04:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_157" name="R7" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_157">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T20:19:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-(Has Part) of human CXCR7 since it is CXCR7, and (Has Part) of click beetle luciferase (potentially use (has version)?).
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_159" name="C4Bpii" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_159">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:57:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex (after dissociation of Beta-arrestin-2 tagged with C-terminal of click beetle luciferase) of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_161" name="C4Bei" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_161">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:23:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Be is human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_163" name="R4Bpi" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_163">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-11T22:45:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_165" name="R4Bp" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_165">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T15:37:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_167" name="R7Be" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_167">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-11T22:45:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-Be is human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_169" name="R7Bei" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_169">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-11T22:45:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-Be is human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_171" name="R7Beii" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_171">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T21:05:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular receptor (after dissociation of endogenous Beta-arrestin-2) of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_173" name="C7Be" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_173">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:26:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P48061" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-L12 is human CXCL12, Stromal cell-derived factor-1. This is not labelled. 
-Be is human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_175" name="R4Bei" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_175">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T15:38:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P61073" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R4 is Complementation receptor (human) CXCR4, with N-terminus of click beetle luciferase, amino acids 395-542. 
-Be (is) human Beta-arrestin-2. It is not labelled. Be in the model is endogenous.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_177" name="R7Bpi" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_177">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T21:06:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25106" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q718F0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Intracellular Complex of:
-R7 is Complementation receptor (human) CXCR7, with N-terminus of click beetle luciferase, amino acids 2-413. 
-Bp is human Beta-arrestin-2 tagged with C-terminal of click beetle luciferase.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_179" name="L12" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_179">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:11:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P48061" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          L12 is human CXCL12, Stromal cell-derived factor-1. It is not labelled.
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_65" name="kf,L12,4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T15:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="kf,L12,7" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:55:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="kf,B,4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:55:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kf,B,7" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:55:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="KD,R4,L12" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:31:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="KD,R7,L12" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:53:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="KD,C4,B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:07:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="KD,C7,B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:07:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="ke,R4B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:54:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="ke,R7B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:55:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="ke,C7Bi" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:54:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="koff,B,4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:55:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="koff,B,7" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:56:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="krec,R4Bi" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:54:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="krec,R7Bii" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:54:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="krec,C7Bii" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:56:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kdeg,C4Bii" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:53:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="kdeg,L12i" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:54:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="KD,R4,B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:31:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="KD,R7,B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:53:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="ke,C4B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:54:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="ke,C7B" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:54:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="n4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:56:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="n7" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:32:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="n47" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T19:57:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Nav" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T20:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Vwell" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T20:16:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Vcell" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T20:17:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="nmol_to_mol" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T22:40:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Total4" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-24T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bp],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bpi],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4Bp],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Total7" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-13T20:43:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bp],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bpi],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bpii],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bp],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bpi],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="%Beta" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-08T16:38:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[Be],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[Bp],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[Be],Reference=InitialConcentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[Bp],Reference=InitialConcentration&gt;)*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_0" name="%CXCR4" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-08T16:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4],Reference=InitialConcentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4],Reference=InitialConcentration&gt;)*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="%CXCR7" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-08T16:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7],Reference=Concentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7],Reference=InitialConcentration&gt;+&lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7],Reference=InitialConcentration&gt;)*100
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_73" name="Be binding R4" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4414" name="parameter_21" value="7.8e+06"/>
          <Constant key="Parameter_4415" name="parameter_3" value="8.5e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="Bp binding R4" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:11:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4408" name="parameter_21" value="7.8e+06"/>
          <Constant key="Parameter_4409" name="parameter_3" value="8.5e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="Be binding C4" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4410" name="parameter_3" value="8.5e-09"/>
          <Constant key="Parameter_4411" name="parameter_9" value="5.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="Bp binding C4" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:10:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4412" name="parameter_3" value="8.5e-09"/>
          <Constant key="Parameter_4413" name="parameter_9" value="5.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="Be binding R7" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:10:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_157" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4424" name="parameter_22" value="2.3e+06"/>
          <Constant key="Parameter_4425" name="parameter_4" value="1.4e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="Bp binding R7" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:12:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_155" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_157" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4426" name="parameter_22" value="2.3e+06"/>
          <Constant key="Parameter_4427" name="parameter_4" value="1.4e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="Be binding C7" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:07:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_173" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4428" name="parameter_10" value="650000"/>
          <Constant key="Parameter_4429" name="parameter_4" value="1.4e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="Bp binding C7" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:11:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990763" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4430" name="parameter_10" value="650000"/>
          <Constant key="Parameter_4431" name="parameter_4" value="1.4e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="Internalization of R4Be" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:55:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_175" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4432" name="k1" value="0.0023"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="Internalization of R4Bp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:55:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_163" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4433" name="k1" value="0.0023"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="Internalization of C4Be" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:49:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_161" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4434" name="k1" value="0.0047"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="Internalization of C4Bp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:54:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4435" name="k1" value="0.0047"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="Internalization of R7Be" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:56:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4436" name="k1" value="0.0039"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="Internalization of R7Bp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:56:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4437" name="k1" value="0.0039"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="Internalization of C7Be" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:55:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4438" name="k1" value="0.0021"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="Internalization of C7Bp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:55:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:go:GO:0002031" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4439" name="k1" value="0.0021"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Dissocation of Be from C4Bei" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:28:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0043241" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4440" name="k1" value="0.00074"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="Dissociation of Bp from C4Bpi" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:48:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0043241" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4441" name="k1" value="0.00074"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="Dissociation of Be from R7Bei" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:48:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0043241" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4442" name="k1" value="0.0025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Dissociation of Bp from R7Bpi" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:49:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0043241" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4443" name="k1" value="0.0025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Trafficking of C7Bei to late endosomes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:07:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0045022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4444" name="k1" value="0.00055"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Trafficking of C7Bpi to late endosomes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:10:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0045022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4445" name="k1" value="0.00055"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Recycling of R4Bei" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:05:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001881" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4446" name="k1" value="6.9e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_175"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Recycling of R4Bpi" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:06:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001881" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4447" name="k1" value="6.9e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Recycling of R7Beii" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:06:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001881" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4448" name="k1" value="0.0011"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="Recycling of R7Bpii" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:06:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001881" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4449" name="k1" value="0.0011"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="Recycling of C7Beii" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:00:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:go:GO:0001881" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4450" name="k1" value="0.00028"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Recycling of C7Bpii" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:05:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001881" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4451" name="k1" value="0.00028"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="Degradation of C4Beii" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:12:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030163" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4454" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="Degradation of C4Bpii" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:28:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030163" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4455" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Degradation of L12i" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:28:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030163" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4456" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="L12 binding R4" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T22:46:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031723" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035716" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4452" name="parameter_1" value="0.0021"/>
          <Constant key="Parameter_4453" name="parameter_28" value="6.02e+23"/>
          <Constant key="Parameter_4457" name="parameter_30" value="8.4e-12"/>
          <Constant key="Parameter_4458" name="parameter_5" value="40"/>
          <Constant key="Parameter_4459" name="parameter_7" value="1e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="L12 binding R7" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T22:46:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035716" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_157" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4460" name="parameter_2" value="0.0014"/>
          <Constant key="Parameter_4461" name="parameter_28" value="6.02e+23"/>
          <Constant key="Parameter_4462" name="parameter_30" value="8.4e-12"/>
          <Constant key="Parameter_4539" name="parameter_6" value="0.84"/>
          <Constant key="Parameter_4540" name="parameter_7" value="1e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="L12 binding R4Be" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T22:47:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031723" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035716" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4541" name="parameter_1" value="0.0021"/>
          <Constant key="Parameter_4542" name="parameter_21" value="7.8e+06"/>
          <Constant key="Parameter_4543" name="parameter_28" value="6.02e+23"/>
          <Constant key="Parameter_4544" name="parameter_30" value="8.4e-12"/>
          <Constant key="Parameter_4582" name="parameter_5" value="40"/>
          <Constant key="Parameter_4581" name="parameter_7" value="1e+09"/>
          <Constant key="Parameter_4580" name="parameter_9" value="5.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="L12 binding R4Bp" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T22:50:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031723" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035716" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4579" name="parameter_1" value="0.0021"/>
          <Constant key="Parameter_4578" name="parameter_21" value="7.8e+06"/>
          <Constant key="Parameter_4577" name="parameter_28" value="6.02e+23"/>
          <Constant key="Parameter_4571" name="parameter_30" value="8.4e-12"/>
          <Constant key="Parameter_4572" name="parameter_5" value="40"/>
          <Constant key="Parameter_4573" name="parameter_7" value="1e+09"/>
          <Constant key="Parameter_4575" name="parameter_9" value="5.1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="L12 binding R7Be" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T22:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035716" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_167" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4576" name="parameter_10" value="650000"/>
          <Constant key="Parameter_4574" name="parameter_2" value="0.0014"/>
          <Constant key="Parameter_4570" name="parameter_22" value="2.3e+06"/>
          <Constant key="Parameter_4569" name="parameter_28" value="6.02e+23"/>
          <Constant key="Parameter_4567" name="parameter_30" value="8.4e-12"/>
          <Constant key="Parameter_4566" name="parameter_6" value="0.84"/>
          <Constant key="Parameter_4568" name="parameter_7" value="1e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="L12 binding R7Bp" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-13T22:52:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0035716" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4565" name="parameter_10" value="650000"/>
          <Constant key="Parameter_4512" name="parameter_2" value="0.0014"/>
          <Constant key="Parameter_4511" name="parameter_22" value="2.3e+06"/>
          <Constant key="Parameter_4510" name="parameter_28" value="6.02e+23"/>
          <Constant key="Parameter_4875" name="parameter_30" value="8.4e-12"/>
          <Constant key="Parameter_4874" name="parameter_6" value="0.84"/>
          <Constant key="Parameter_4768" name="parameter_7" value="1e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[Be]" value="328437.241399281" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[Bp]" value="492655.862098776" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Be]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Beii]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bpi]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bei]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Beii]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bpi]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[L12i]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4]" value="133539.963932179" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4Be]" value="5434.48582568463" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bpii]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bpii]" value="345117.328033337" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bp]" value="97340.7848290227" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7]" value="509483.771339917" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bpii]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bei]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4Bpi]" value="271724.292902136" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4Bp]" value="8151.72873852455" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Be]" value="64893.856552701" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bei]" value="101234.416222443" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Beii]" value="230078.21868896" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Be]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4Bei]" value="181149.528601477" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bpi]" value="151851.62433362" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[L12]" value="116000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,4]" value="0.0021" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,7]" value="0.0014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,4]" value="8.5e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,7]" value="1.4e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,L12]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,L12]" value="0.84" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C4\,B]" value="5100000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C7\,B]" value="650000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,R4B]" value="0.0023" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,R7B]" value="0.0039" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C7Bi]" value="0.00055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[koff\,B\,4]" value="0.00074" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[koff\,B\,7]" value="0.0025" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,R4Bi]" value="6.9e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,R7Bii]" value="0.0011" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,C7Bii]" value="0.00028" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kdeg\,C4Bii]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kdeg\,L12i]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,B]" value="7800000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,B]" value="2300000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C4B]" value="0.0047" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C7B]" value="0.0021" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[n4]" value="40000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[n7]" value="40000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[n47]" value="40000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Nav]" value="6.02e+23" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vwell]" value="6.999999999999999e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vcell]" value="8.4e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[nmol_to_mol]" value="1000000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Total4]" value="8151.72873852455" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Total7]" value="249192.4091626427" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[%Beta]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[%CXCR4]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[%CXCR7]" value="100" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding R4],ParameterGroup=Parameters,Parameter=parameter_21" value="7800000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding R4],ParameterGroup=Parameters,Parameter=parameter_3" value="8.5e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding R4],ParameterGroup=Parameters,Parameter=parameter_21" value="7800000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding R4],ParameterGroup=Parameters,Parameter=parameter_3" value="8.5e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding C4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding C4],ParameterGroup=Parameters,Parameter=parameter_3" value="8.5e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding C4],ParameterGroup=Parameters,Parameter=parameter_9" value="5100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding C4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding C4],ParameterGroup=Parameters,Parameter=parameter_3" value="8.5e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding C4],ParameterGroup=Parameters,Parameter=parameter_9" value="5100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding R7],ParameterGroup=Parameters,Parameter=parameter_22" value="2300000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding R7],ParameterGroup=Parameters,Parameter=parameter_4" value="1.4e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding R7],ParameterGroup=Parameters,Parameter=parameter_22" value="2300000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding R7],ParameterGroup=Parameters,Parameter=parameter_4" value="1.4e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding C7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding C7],ParameterGroup=Parameters,Parameter=parameter_10" value="650000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Be binding C7],ParameterGroup=Parameters,Parameter=parameter_4" value="1.4e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding C7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding C7],ParameterGroup=Parameters,Parameter=parameter_10" value="650000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Bp binding C7],ParameterGroup=Parameters,Parameter=parameter_4" value="1.4e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,B\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R4Be]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R4Be],ParameterGroup=Parameters,Parameter=k1" value="0.0023" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,R4B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R4Bp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R4Bp],ParameterGroup=Parameters,Parameter=k1" value="0.0023" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,R4B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C4Be]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C4Be],ParameterGroup=Parameters,Parameter=k1" value="0.0047" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C4B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C4Bp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C4Bp],ParameterGroup=Parameters,Parameter=k1" value="0.0047" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C4B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R7Be]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R7Be],ParameterGroup=Parameters,Parameter=k1" value="0.0039" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,R7B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R7Bp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of R7Bp],ParameterGroup=Parameters,Parameter=k1" value="0.0039" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,R7B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C7Be]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C7Be],ParameterGroup=Parameters,Parameter=k1" value="0.0021" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C7B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C7Bp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Internalization of C7Bp],ParameterGroup=Parameters,Parameter=k1" value="0.0021" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C7B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissocation of Be from C4Bei]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissocation of Be from C4Bei],ParameterGroup=Parameters,Parameter=k1" value="0.00074" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[koff\,B\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissociation of Bp from C4Bpi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissociation of Bp from C4Bpi],ParameterGroup=Parameters,Parameter=k1" value="0.00074" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[koff\,B\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissociation of Be from R7Bei]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissociation of Be from R7Bei],ParameterGroup=Parameters,Parameter=k1" value="0.0025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[koff\,B\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissociation of Bp from R7Bpi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Dissociation of Bp from R7Bpi],ParameterGroup=Parameters,Parameter=k1" value="0.0025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[koff\,B\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Trafficking of C7Bei to late endosomes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Trafficking of C7Bei to late endosomes],ParameterGroup=Parameters,Parameter=k1" value="0.00055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C7Bi],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Trafficking of C7Bpi to late endosomes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Trafficking of C7Bpi to late endosomes],ParameterGroup=Parameters,Parameter=k1" value="0.00055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[ke\,C7Bi],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R4Bei]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R4Bei],ParameterGroup=Parameters,Parameter=k1" value="6.9e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,R4Bi],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R4Bpi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R4Bpi],ParameterGroup=Parameters,Parameter=k1" value="6.9e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,R4Bi],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R7Beii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R7Beii],ParameterGroup=Parameters,Parameter=k1" value="0.0011" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,R7Bii],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R7Bpii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of R7Bpii],ParameterGroup=Parameters,Parameter=k1" value="0.0011" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,R7Bii],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of C7Beii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of C7Beii],ParameterGroup=Parameters,Parameter=k1" value="0.00028" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,C7Bii],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of C7Bpii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Recycling of C7Bpii],ParameterGroup=Parameters,Parameter=k1" value="0.00028" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[krec\,C7Bii],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Degradation of C4Beii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Degradation of C4Beii],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kdeg\,C4Bii],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Degradation of C4Bpii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Degradation of C4Bpii],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kdeg\,C4Bii],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Degradation of L12i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[Degradation of L12i],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kdeg\,L12i],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4],ParameterGroup=Parameters,Parameter=parameter_1" value="0.0021" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4],ParameterGroup=Parameters,Parameter=parameter_28" value="6.02e+23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Nav],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4],ParameterGroup=Parameters,Parameter=parameter_30" value="8.4e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vcell],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4],ParameterGroup=Parameters,Parameter=parameter_5" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,L12],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4],ParameterGroup=Parameters,Parameter=parameter_7" value="1000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[nmol_to_mol],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7],ParameterGroup=Parameters,Parameter=parameter_2" value="0.0014" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7],ParameterGroup=Parameters,Parameter=parameter_28" value="6.02e+23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Nav],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7],ParameterGroup=Parameters,Parameter=parameter_30" value="8.4e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vcell],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7],ParameterGroup=Parameters,Parameter=parameter_6" value="0.84" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,L12],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7],ParameterGroup=Parameters,Parameter=parameter_7" value="1000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[nmol_to_mol],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be],ParameterGroup=Parameters,Parameter=parameter_1" value="0.0021" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be],ParameterGroup=Parameters,Parameter=parameter_21" value="7800000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be],ParameterGroup=Parameters,Parameter=parameter_28" value="6.02e+23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Nav],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be],ParameterGroup=Parameters,Parameter=parameter_30" value="8.4e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vcell],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be],ParameterGroup=Parameters,Parameter=parameter_5" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,L12],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be],ParameterGroup=Parameters,Parameter=parameter_7" value="1000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[nmol_to_mol],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Be],ParameterGroup=Parameters,Parameter=parameter_9" value="5100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp],ParameterGroup=Parameters,Parameter=parameter_1" value="0.0021" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp],ParameterGroup=Parameters,Parameter=parameter_21" value="7800000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp],ParameterGroup=Parameters,Parameter=parameter_28" value="6.02e+23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Nav],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp],ParameterGroup=Parameters,Parameter=parameter_30" value="8.4e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vcell],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp],ParameterGroup=Parameters,Parameter=parameter_5" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R4\,L12],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp],ParameterGroup=Parameters,Parameter=parameter_7" value="1000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[nmol_to_mol],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R4Bp],ParameterGroup=Parameters,Parameter=parameter_9" value="5100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C4\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be],ParameterGroup=Parameters,Parameter=parameter_10" value="650000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be],ParameterGroup=Parameters,Parameter=parameter_2" value="0.0014" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be],ParameterGroup=Parameters,Parameter=parameter_22" value="2300000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be],ParameterGroup=Parameters,Parameter=parameter_28" value="6.02e+23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Nav],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be],ParameterGroup=Parameters,Parameter=parameter_30" value="8.4e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vcell],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be],ParameterGroup=Parameters,Parameter=parameter_6" value="0.84" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,L12],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Be],ParameterGroup=Parameters,Parameter=parameter_7" value="1000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[nmol_to_mol],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp],ParameterGroup=Parameters,Parameter=parameter_10" value="650000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,C7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp],ParameterGroup=Parameters,Parameter=parameter_2" value="0.0014" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[kf\,L12\,7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp],ParameterGroup=Parameters,Parameter=parameter_22" value="2300000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,B],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp],ParameterGroup=Parameters,Parameter=parameter_28" value="6.02e+23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Nav],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp],ParameterGroup=Parameters,Parameter=parameter_30" value="8.4e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Vcell],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp],ParameterGroup=Parameters,Parameter=parameter_6" value="0.84" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[KD\,R7\,L12],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Reactions[L12 binding R7Bp],ParameterGroup=Parameters,Parameter=parameter_7" value="1000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[nmol_to_mol],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_6"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 328437.241399281 492655.862098776 509483.771339917 116000000 0 133539.963932179 97340.7848290227 64893.856552701 0 0 0 0 0 0 0 0 181149.528601477 8151.72873852455 101234.416222443 345117.328033337 0 271724.292902136 0 0 230078.21868896 0 0 151851.62433362 0 5434.48582568463 8151.72873852455 249192.4091626427 100 100 100 1 0.0021 0.0014 8.5e-09 1.4e-08 40 0.84 5100000 650000 0.0023 0.0039 0.00055 0.00074 0.0025 6.9e-05 0.0011 0.00028 0.0001 0.0001 7800000 2300000 0.0047 0.0021 40000 40000 40000 6.02e+23 6.999999999999999e-05 8.4e-12 1000000000 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="24"/>
        <Parameter name="Duration" type="float" value="2400"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_0" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Figure 4" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[%Beta]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[%Beta],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[%CXCR4]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[%CXCR4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[%CXCR7]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[%CXCR7],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Supp Fig. B (panel C)" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Total4]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Total4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C4Bp]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C4Bpi]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C4Bpi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R4Bp]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R4Bp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Supp Fig. B (panel D)" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Total7]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Values[Total7],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C7Bp]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C7Bpi]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bpi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C7Bpii]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[C7Bpii],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R7Bp]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R7Bpi]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coggins2014 - CXCL12 dependent recruitment of beta arrestin,Vector=Compartments[Intracellular],Vector=Metabolites[R7Bpi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1408060000.xml">
    <SBMLMap SBMLid="compartment_2" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="function_1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_10" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_11" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_12" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_13" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_14" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_2" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_3" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_5" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_6" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_7" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_8" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_9" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="parameter_10" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="parameter_11" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="parameter_12" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="parameter_13" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="parameter_14" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="parameter_15" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="parameter_16" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="parameter_17" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="parameter_18" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="parameter_19" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="parameter_2" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="parameter_20" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="parameter_21" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="parameter_22" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="parameter_23" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="parameter_24" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="parameter_25" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="parameter_26" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="parameter_27" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="parameter_28" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="parameter_29" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="parameter_3" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="parameter_30" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="parameter_4" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="parameter_5" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="parameter_6" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="parameter_7" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="parameter_9" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="reaction_13" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="reaction_18" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="reaction_19" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="reaction_20" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="reaction_21" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="reaction_22" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="reaction_23" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="reaction_24" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="reaction_25" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="reaction_26" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="reaction_27" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="reaction_28" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="reaction_29" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="reaction_30" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="reaction_31" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="reaction_32" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="reaction_33" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="reaction_34" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="reaction_35" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="reaction_36" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="reaction_37" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_179"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="species_12" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="species_13" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="species_14" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="species_18" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="species_19" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="species_20" COPASIkey="Metabolite_157"/>
    <SBMLMap SBMLid="species_21" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="species_22" COPASIkey="Metabolite_161"/>
    <SBMLMap SBMLid="species_23" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="species_24" COPASIkey="Metabolite_165"/>
    <SBMLMap SBMLid="species_25" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="species_26" COPASIkey="Metabolite_169"/>
    <SBMLMap SBMLid="species_27" COPASIkey="Metabolite_171"/>
    <SBMLMap SBMLid="species_28" COPASIkey="Metabolite_173"/>
    <SBMLMap SBMLid="species_29" COPASIkey="Metabolite_175"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="species_30" COPASIkey="Metabolite_177"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_89"/>
  </SBMLReference>
</COPASI>
