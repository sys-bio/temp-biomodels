<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.40 (Build 275) (http://www.copasi.org) at 2024-01-26T18:02:35Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="40" versionDevel="275" copasiSourcesModified="0">
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
    <Function key="Function_42" name="Function for v_0" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Epo*EpoRJAK2*JAK2ActEpo/(SOCS3*SOCS3Inh/SOCS3Eqc+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="Epo" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="EpoRJAK2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="JAK2ActEpo" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="SOCS3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="SOCS3Eqc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="SOCS3Inh" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for v_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        DeaEpoRJAKActSHP1*EpoRpJAK2*SHP1Act/SHP1ActEpoR
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="DeaEpoRJAKActSHP1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="EpoRpJAK2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="SHP1Act" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="SHP1ActEpoR" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for v_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        EpoRpJAK2*EpoRActJAK2/(SOCS3*SOCS3Inh/SOCS3Eqc+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="EpoRActJAK2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="EpoRpJAK2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="SOCS3" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="SOCS3Eqc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="SOCS3Inh" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for v_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3*EpoRpJAK2*EpoRActJAK2/(SOCS3*SOCS3Inh/SOCS3Eqc+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="EpoRActJAK2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="EpoRpJAK2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="SOCS3" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_287" name="SOCS3Eqc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="SOCS3Inh" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for v_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3*EpoRActJAK2*p1EpoRpJAK2/(SOCS3*SOCS3Inh/SOCS3Eqc+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="EpoRActJAK2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="SOCS3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_293" name="SOCS3Eqc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="SOCS3Inh" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="p1EpoRpJAK2" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for v_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        EpoRActJAK2*p2EpoRpJAK2/(SOCS3*SOCS3Inh/SOCS3Eqc+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="EpoRActJAK2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="SOCS3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="SOCS3Eqc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="SOCS3Inh" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="p2EpoRpJAK2" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for v_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        DeaEpoRJAKActSHP1*SHP1Act*p1EpoRpJAK2/SHP1ActEpoR
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="DeaEpoRJAKActSHP1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="SHP1Act" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_303" name="SHP1ActEpoR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="p1EpoRpJAK2" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for v_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        DeaEpoRJAKActSHP1*SHP1Act*p2EpoRpJAK2/SHP1ActEpoR
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="DeaEpoRJAKActSHP1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="SHP1Act" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="SHP1ActEpoR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="p2EpoRpJAK2" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for v_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        DeaEpoRJAKActSHP1*SHP1Act*p12EpoRpJAK2/SHP1ActEpoR
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="DeaEpoRJAKActSHP1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="SHP1Act" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="SHP1ActEpoR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="p12EpoRpJAK2" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for v_11" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        SHP1*SHP1ActEpoR*(EpoRpJAK2+p12EpoRpJAK2+p1EpoRpJAK2+p2EpoRpJAK2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_316" name="EpoRpJAK2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="SHP1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_314" name="SHP1ActEpoR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="p12EpoRpJAK2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="p1EpoRpJAK2" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_318" name="p2EpoRpJAK2" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for v_13" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        STAT5*STAT5ActJAK2*(EpoRpJAK2+p12EpoRpJAK2+p1EpoRpJAK2+p2EpoRpJAK2)/(SOCS3*SOCS3Inh/SOCS3Eqc+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="EpoRpJAK2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_323" name="SOCS3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_322" name="SOCS3Eqc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="SOCS3Inh" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="STAT5" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="STAT5ActJAK2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="p12EpoRpJAK2" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_326" name="p1EpoRpJAK2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_327" name="p2EpoRpJAK2" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for v_14" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        STAT5*STAT5ActEpoR*(p12EpoRpJAK2+p1EpoRpJAK2)^2/((SOCS3*SOCS3Inh/SOCS3Eqc+1)*(CIS*CISInh/CISEqc+1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="CIS" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_335" name="CISEqc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="CISInh" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="SOCS3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="SOCS3Eqc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="SOCS3Inh" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="STAT5" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="STAT5ActEpoR" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="p12EpoRpJAK2" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="p1EpoRpJAK2" order="9" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for v_15" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cyt*STAT5Imp*pSTAT5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_347" name="STAT5Imp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="cyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_345" name="pSTAT5" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for v_16" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        nuc*STAT5Exp*npSTAT5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="STAT5Exp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="npSTAT5" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="nuc" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for v_17" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        -CISRNAEqc*CISRNATurn*npSTAT5*(ActD-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="ActD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="CISRNAEqc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="CISRNATurn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="npSTAT5" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for v_19" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        nuc*CISnRNA2*CISRNADelay
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="CISRNADelay" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="CISnRNA2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_349" name="nuc" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for v_21" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CISRNA*CISEqc*CISTurn
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="CISEqc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="CISRNA" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="CISTurn" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for v_23" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cyt*-SOCS3Eqc*SOCS3Turn*npSTAT5*(ActD-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="ActD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="SOCS3Eqc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="SOCS3Turn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="cyt" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_358" name="npSTAT5" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for v_25" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        SOCS3oe*SOCS3Eqc*SOCS3Turn*SOCS3EqcOE
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="SOCS3Eqc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="SOCS3EqcOE" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="SOCS3Turn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="SOCS3oe" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway" simulationType="time" timeUnit="min" volumeUnit="pl" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0038162"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0046427"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:34380040"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-06-23T11:07:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0004911"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>A mathematical model for cell-to-cell variability in JAK2/STAT5 pathway components and cytoplasmic volumes defines survival threshold in erythroid progenitor cells</p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cyt" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:go.ref:GO:0005829"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="nuc" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is rdf:resource="urn:miriam:go.ref:GO:0005634"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="EpoRJAK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O60674"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01588"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19235"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_EpoRJAK2],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="EpoRpJAK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bao:0002007"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O60674"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01588"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19235"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="p1EpoRpJAK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bao:0002007"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O60674"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01588"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19235"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="p2EpoRpJAK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bao:0002007"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O60674"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01588"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19235"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="p12EpoRpJAK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bao:0002007"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O60674"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01588"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19235"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="SHP1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P29350"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_SHP1],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="SHP1Act" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bao:0002007"/>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P29350"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="STAT5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P42229"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_STAT5],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="pSTAT5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bao:0002007"/>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P42229"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="npSTAT5" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bao:0002007"/>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P42229"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="CISnRNA1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:is rdf:resource="urn:miriam:efo:0003738"/>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9NSE2"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="CISnRNA2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is rdf:resource="urn:miriam:efo:0003738"/>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9NSE2"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="CISRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is rdf:resource="urn:miriam:efo:0003738"/>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9NSE2"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="CIS" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9NSE2"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="SOCS3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:O14543"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          0
        </InitialExpression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="ActD" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="CISEqc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="CISInh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="CISRNADelay" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="CISRNAEqc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="CISRNATurn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="CISTurn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="DeaEpoRJAKActSHP1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="EpoRActJAK2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="JAK2ActEpo" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="SHP1ActEpoR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="SHP1Dea" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="SOCS3Eqc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="SOCS3EqcOE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="SOCS3Inh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="SOCS3Turn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="SOCS3oe" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="STAT5ActEpoR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="STAT5ActJAK2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="STAT5Exp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="STAT5Imp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="epo_level" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="init_EpoRJAK2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="init_SHP1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="init_STAT5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Epo" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[epo_level],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Total_STAT5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[STAT5],Reference=Concentration>+&lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[pSTAT5],Reference=Concentration>+0.275*&lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[nuc],Vector=Metabolites[npSTAT5],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="measuralbe_pSTAT5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[pSTAT5],Reference=Concentration>/&lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[Total_STAT5],Reference=Value>*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="%pSTAT5/Total_STAT5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[pSTAT5],Reference=Concentration>/&lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[Total_STAT5],Reference=Value>*100
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="v_0" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016310"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7456" name="Epo" value="20"/>
          <Constant key="Parameter_7455" name="JAK2ActEpo" value="0.052077"/>
          <Constant key="Parameter_7453" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7452" name="SOCS3Inh" value="0.0103414"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="v_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016311"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7454" name="DeaEpoRJAKActSHP1" value="0.00088591"/>
          <Constant key="Parameter_7451" name="SHP1ActEpoR" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="v_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016310"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7450" name="EpoRActJAK2" value="0.326238"/>
          <Constant key="Parameter_7448" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7447" name="SOCS3Inh" value="0.0103414"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="v_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016310"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7449" name="EpoRActJAK2" value="0.326238"/>
          <Constant key="Parameter_7446" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7445" name="SOCS3Inh" value="0.0103414"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="v_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016310"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7443" name="EpoRActJAK2" value="0.326238"/>
          <Constant key="Parameter_7442" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7444" name="SOCS3Inh" value="0.0103414"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="v_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016310"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7441" name="EpoRActJAK2" value="0.326238"/>
          <Constant key="Parameter_7440" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7439" name="SOCS3Inh" value="0.0103414"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="v_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016311"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7437" name="DeaEpoRJAKActSHP1" value="0.00088591"/>
          <Constant key="Parameter_7436" name="SHP1ActEpoR" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="v_7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016311"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7438" name="DeaEpoRJAKActSHP1" value="0.00088591"/>
          <Constant key="Parameter_7435" name="SHP1ActEpoR" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="v_8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016311"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7434" name="DeaEpoRJAKActSHP1" value="0.00088591"/>
          <Constant key="Parameter_7433" name="SHP1ActEpoR" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="v_11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0010467"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7431" name="SHP1ActEpoR" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="v_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7430" name="k1" value="0.00557393"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="v_13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016310"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7432" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7429" name="SOCS3Inh" value="0.0103414"/>
          <Constant key="Parameter_7428" name="STAT5ActJAK2" value="0.0513254"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="v_14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016310"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7427" name="CISEqc" value="0.767539"/>
          <Constant key="Parameter_7426" name="CISInh" value="4.3834e+08"/>
          <Constant key="Parameter_7425" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7424" name="SOCS3Inh" value="0.0103414"/>
          <Constant key="Parameter_7422" name="STAT5ActEpoR" value="0.299137"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="v_15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C28506"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7421" name="STAT5Imp" value="0.0404763"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="v_16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016311"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7423" name="STAT5Exp" value="0.0112157"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="v_17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17208"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7420" name="ActD" value="0"/>
          <Constant key="Parameter_7419" name="CISRNAEqc" value="1"/>
          <Constant key="Parameter_7418" name="CISRNATurn" value="0.119809"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="v_18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016556"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7416" name="k1" value="0.119845"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="v_19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0016556"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7415" name="CISRNADelay" value="0.119845"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="v_20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7417" name="k1" value="0.119809"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="v_21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0006412"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7414" name="CISEqc" value="0.767539"/>
          <Constant key="Parameter_7413" name="CISTurn" value="0.0178233"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="v_22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7411" name="k1" value="0.0178233"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="v_23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17208"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7410" name="ActD" value="0"/>
          <Constant key="Parameter_7412" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7409" name="SOCS3Turn" value="0.0806005"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="v_24" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7408" name="k1" value="0.0806005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="v_25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0006412"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7406" name="SOCS3Eqc" value="0.162494"/>
          <Constant key="Parameter_7405" name="SOCS3EqcOE" value="828.062"/>
          <Constant key="Parameter_7407" name="SOCS3Turn" value="0.0806005"/>
          <Constant key="Parameter_7404" name="SOCS3oe" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_16"/>
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
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt]" value="0.40000000000000002" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[nuc]" value="0.27500000000000002" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[EpoRJAK2]" value="9.5753202067374442e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_EpoRJAK2],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[EpoRpJAK2]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[p1EpoRpJAK2]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[p2EpoRpJAK2]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[p12EpoRpJAK2]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[SHP1]" value="6.4373349234740837e+24" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_SHP1],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[SHP1Act]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[STAT5]" value="1.9204416050270748e+25" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_STAT5],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[pSTAT5]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[nuc],Vector=Metabolites[npSTAT5]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[nuc],Vector=Metabolites[CISnRNA1]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[nuc],Vector=Metabolites[CISnRNA2]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[CISRNA]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[CIS]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Compartments[cyt],Vector=Metabolites[SOCS3]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              0
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[ActD]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISEqc]" value="0.76753878714883705" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISInh]" value="438340395.29483002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNADelay]" value="0.11984530469648599" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNAEqc]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNATurn]" value="0.119809412320528" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISTurn]" value="0.017823287616120901" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[DeaEpoRJAKActSHP1]" value="0.00088591028022444896" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[EpoRActJAK2]" value="0.326237934674659" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[JAK2ActEpo]" value="0.0520769792397573" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1ActEpoR]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1Dea]" value="0.0055739282000089397" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc]" value="0.16249378691320801" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3EqcOE]" value="828.06160444758996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh]" value="0.010341350346111" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Turn]" value="0.080600544902578605" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3oe]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5ActEpoR]" value="0.29913665156382402" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5ActJAK2]" value="0.0513253755320527" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5Exp]" value="0.0112157105187786" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5Imp]" value="0.040476349459148797" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[epo_level]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_EpoRJAK2]" value="3.9750483209966698" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_SHP1]" value="26.723615322278199" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[init_STAT5]" value="79.724207784337594" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[Epo]" value="20" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[Total_STAT5]" value="79.724207784337594" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[measuralbe_pSTAT5]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[%pSTAT5/Total_STAT5]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_0],ParameterGroup=Parameters,Parameter=Epo" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[Epo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_0],ParameterGroup=Parameters,Parameter=JAK2ActEpo" value="0.0520769792397573" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[JAK2ActEpo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_0],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_0],ParameterGroup=Parameters,Parameter=SOCS3Inh" value="0.010341350346111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_1],ParameterGroup=Parameters,Parameter=DeaEpoRJAKActSHP1" value="0.00088591028022444896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[DeaEpoRJAKActSHP1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_1],ParameterGroup=Parameters,Parameter=SHP1ActEpoR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1ActEpoR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_2],ParameterGroup=Parameters,Parameter=EpoRActJAK2" value="0.326237934674659" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[EpoRActJAK2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_2],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_2],ParameterGroup=Parameters,Parameter=SOCS3Inh" value="0.010341350346111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_3],ParameterGroup=Parameters,Parameter=EpoRActJAK2" value="0.326237934674659" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[EpoRActJAK2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_3],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_3],ParameterGroup=Parameters,Parameter=SOCS3Inh" value="0.010341350346111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_4],ParameterGroup=Parameters,Parameter=EpoRActJAK2" value="0.326237934674659" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[EpoRActJAK2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_4],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_4],ParameterGroup=Parameters,Parameter=SOCS3Inh" value="0.010341350346111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_5],ParameterGroup=Parameters,Parameter=EpoRActJAK2" value="0.326237934674659" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[EpoRActJAK2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_5],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_5],ParameterGroup=Parameters,Parameter=SOCS3Inh" value="0.010341350346111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_6],ParameterGroup=Parameters,Parameter=DeaEpoRJAKActSHP1" value="0.00088591028022444896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[DeaEpoRJAKActSHP1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_6],ParameterGroup=Parameters,Parameter=SHP1ActEpoR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1ActEpoR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_7],ParameterGroup=Parameters,Parameter=DeaEpoRJAKActSHP1" value="0.00088591028022444896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[DeaEpoRJAKActSHP1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_7],ParameterGroup=Parameters,Parameter=SHP1ActEpoR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1ActEpoR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_8],ParameterGroup=Parameters,Parameter=DeaEpoRJAKActSHP1" value="0.00088591028022444896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[DeaEpoRJAKActSHP1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_8],ParameterGroup=Parameters,Parameter=SHP1ActEpoR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1ActEpoR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_11],ParameterGroup=Parameters,Parameter=SHP1ActEpoR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1ActEpoR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_12],ParameterGroup=Parameters,Parameter=k1" value="0.0055739282000089397" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SHP1Dea],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_13],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_13],ParameterGroup=Parameters,Parameter=SOCS3Inh" value="0.010341350346111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_13],ParameterGroup=Parameters,Parameter=STAT5ActJAK2" value="0.0513253755320527" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5ActJAK2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_14],ParameterGroup=Parameters,Parameter=CISEqc" value="0.76753878714883705" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISEqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_14],ParameterGroup=Parameters,Parameter=CISInh" value="438340395.29483002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISInh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_14],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_14],ParameterGroup=Parameters,Parameter=SOCS3Inh" value="0.010341350346111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Inh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_14],ParameterGroup=Parameters,Parameter=STAT5ActEpoR" value="0.29913665156382402" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5ActEpoR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_15],ParameterGroup=Parameters,Parameter=STAT5Imp" value="0.040476349459148797" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5Imp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_16],ParameterGroup=Parameters,Parameter=STAT5Exp" value="0.0112157105187786" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[STAT5Exp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_17],ParameterGroup=Parameters,Parameter=ActD" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[ActD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_17],ParameterGroup=Parameters,Parameter=CISRNAEqc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNAEqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_17],ParameterGroup=Parameters,Parameter=CISRNATurn" value="0.119809412320528" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNATurn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_18],ParameterGroup=Parameters,Parameter=k1" value="0.11984530469648599" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNADelay],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_19],ParameterGroup=Parameters,Parameter=CISRNADelay" value="0.11984530469648599" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNADelay],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_20],ParameterGroup=Parameters,Parameter=k1" value="0.119809412320528" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISRNATurn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_21],ParameterGroup=Parameters,Parameter=CISEqc" value="0.76753878714883705" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISEqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_21],ParameterGroup=Parameters,Parameter=CISTurn" value="0.017823287616120901" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISTurn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_22],ParameterGroup=Parameters,Parameter=k1" value="0.017823287616120901" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[CISTurn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_23],ParameterGroup=Parameters,Parameter=ActD" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[ActD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_23],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_23],ParameterGroup=Parameters,Parameter=SOCS3Turn" value="0.080600544902578605" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Turn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_24],ParameterGroup=Parameters,Parameter=k1" value="0.080600544902578605" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Turn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_25],ParameterGroup=Parameters,Parameter=SOCS3Eqc" value="0.16249378691320801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Eqc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_25],ParameterGroup=Parameters,Parameter=SOCS3EqcOE" value="828.06160444758996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3EqcOE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_25],ParameterGroup=Parameters,Parameter=SOCS3Turn" value="0.080600544902578605" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3Turn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Reactions[v_25],ParameterGroup=Parameters,Parameter=SOCS3oe" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[SOCS3oe],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 9.5753202067374442e+23 0 1.9204416050270748e+25 0 0 0 0 0 0 0 0 0 0 0 20 79.724207784337594 0 0 6.4373349234740837e+24 0.40000000000000002 0.27500000000000002 0 0.76753878714883705 438340395.29483002 0.11984530469648599 1 0.119809412320528 0.017823287616120901 0.00088591028022444896 0.326237934674659 0.0520769792397573 1 0.0055739282000089397 0.16249378691320801 828.06160444758996 0.010341350346111 0.080600544902578605 0 0.29913665156382402 0.0513253755320527 0.0112157105187786 0.040476349459148797 20 3.9750483209966698 26.723615322278199 79.724207784337594 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="300"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="300"/>
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
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[epo_level],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="2.5"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="5,0"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
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
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[measuralbe_pSTAT5]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[measuralbe_pSTAT5],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[pSTAT5/Total_STAT5]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2.2000000000000002"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway,Vector=Values[%pSTAT5/Total_STAT5],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="model_jakstat_pa.xml">
    <SBMLMap SBMLid="ActD" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="CIS" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="CISEqc" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="CISInh" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="CISRNA" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="CISRNADelay" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="CISRNAEqc" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="CISRNATurn" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="CISTurn" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="CISnRNA1" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="CISnRNA2" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="DeaEpoRJAKActSHP1" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Epo" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="EpoRActJAK2" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="EpoRJAK2" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="EpoRpJAK2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="JAK2ActEpo" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="SHP1" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="SHP1Act" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="SHP1ActEpoR" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="SHP1Dea" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="SOCS3" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="SOCS3Eqc" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="SOCS3EqcOE" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="SOCS3Inh" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="SOCS3Turn" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="SOCS3oe" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="STAT5" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="STAT5ActEpoR" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="STAT5ActJAK2" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="STAT5Exp" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="STAT5Imp" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="cyt" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="epo_level" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="init_EpoRJAK2" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="init_SHP1" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="init_STAT5" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="npSTAT5" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="nuc" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="p12EpoRpJAK2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="p1EpoRpJAK2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="p2EpoRpJAK2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="pSTAT5" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="v12_v_11" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="v13_v_12" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="v14_v_13" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="v15_v_14" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="v16_v_15" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="v17_v_16" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="v18_v_17" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="v19_v_18" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="v1_v_0" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="v20_v_19" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="v21_v_20" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="v22_v_21" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="v23_v_22" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="v24_v_23" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="v25_v_24" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="v26_v_25" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="v2_v_1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="v3_v_2" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="v4_v_3" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="v5_v_4" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="v6_v_5" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="v7_v_6" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="v8_v_7" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="v9_v_8" COPASIkey="Reaction_8"/>
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
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
