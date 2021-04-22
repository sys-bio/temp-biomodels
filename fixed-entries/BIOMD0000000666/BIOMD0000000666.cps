<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-03-15 13:36:34 UTC -->
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
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="HMM_Modified_3" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_28*species_4/(km+species_4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_246" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="species_28" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_264" name="species_4" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="HMM_Modified_1" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_0*species_3/(km+species_3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="species_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_258" name="species_3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="HMM_Modified_9" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_26*species_10/(km+species_10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="species_10" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="species_26" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="HMM_Modified_4" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_4*species_7/(km+species_7)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="species_4" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="species_7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="HMM_Modified_34" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_16*mTORC1Inactive/(km+mTORC1Inactive)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="mTORC1Inactive" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_276" name="species_16" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="HMM_Modified_7" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_26*species_8/(km+species_8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="species_26" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="species_8" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="HMM_Modified_23" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_0*IRS1Inactive/(km+IRS1Inactive)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="IRS1Inactive" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="species_0" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="HMM_Modified_31" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_26*species_16/(km+species_16)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="species_16" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="species_26" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="HMM_Modified_8" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_8*species_11/(km+species_11)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="species_11" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="species_8" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="HMM_Modified_20" type="UserDefined" reversible="false">
      <Expression>
        Kcat*PTENActive*PIP3Active/(km+PIP3Active)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="PIP3Active" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="PTENActive" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="HMM_Modified_2" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_2*species_5/(km+species_5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="species_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="species_5" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="HMM_Modified_5" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_27*species_6/(km+species_6)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="species_27" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="species_6" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="HMM_Modified_6" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_6*species_9/(km+species_9)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="species_6" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="species_9" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="HMM_Modified_10" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_10*species_13/(km+species_13)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="species_10" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="species_13" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="HMM_Modified_11" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_12*species_2/(km+species_2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="species_12" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="species_2" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="HMM_Modified_12" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_0*species_15/(km+species_15)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="species_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_320" name="species_15" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="HMM_Modified_28" type="UserDefined" reversible="false">
      <Expression>
        Kcat*mTORC2Active*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="mTORC2Active" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_324" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="HMM_Modified_13" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_4*species_15/(km+species_15)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="species_15" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="species_4" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="HMM_Modified_26" type="UserDefined" reversible="false">
      <Expression>
        Kcat*HSP90_Cdc37Active*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_335" name="HSP90_Cdc37Active" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="HMM_Modified" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T12:01:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Kcat*species_14*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="species_14" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_336" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="HMM_Modified_30" type="UserDefined" reversible="false">
      <Expression>
        Kcat*CTMPActive*species_16/(km+species_16)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="CTMPActive" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="species_16" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="HMM_Modified_14" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_16*species_6/(km+species_6)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_347" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="species_16" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="species_6" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="HMM_Modified_15" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_0*species_20/(km+species_20)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="species_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="species_20" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="HMM_Modified_32" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_6*species_10/(km+species_10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="species_10" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="species_6" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="HMM_Modified_21" type="UserDefined" reversible="false">
      <Expression>
        Kcat*PIP3Active*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="PIP3Active" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="HMM_Modified_16" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_19*species_22/(km+species_22)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="species_19" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_360" name="species_22" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="HMM_Modified_18" type="UserDefined" reversible="false">
      <Expression>
        Kcat*bRafMutated*species_9/(km+species_9)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="bRafMutated" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="species_9" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="HMM_Modified_22" type="UserDefined" reversible="false">
      <Expression>
        Kcat*IRS1Active*species_15/(km+species_15)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_371" name="IRS1Active" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_370" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="species_15" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="HMM_Modified_19" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_14*PIP3Inactive/(km+PIP3Inactive)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="PIP3Inactive" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_373" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="species_14" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="HMM_Modified_17" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_29*species_21/(km+species_21)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_379" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="species_21" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="species_29" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="HMM_Modified_24" type="UserDefined" reversible="false">
      <Expression>
        Kcat*PIP3Active*PDK1Inactive/(km+PDK1Inactive)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="PDK1Inactive" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_381" name="PIP3Active" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="HMM_Modified_25" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-31T10:14:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Kcat*PDK1Active*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_387" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="PDK1Active" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_385" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="HMM_Modified_27" type="UserDefined" reversible="false">
      <Expression>
        Kcat*PHLPPActive*species_16/(km+species_16)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="PHLPPActive" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_389" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="species_16" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="HMM_Modified_33" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_10*species_2/(km+species_2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_395" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="species_10" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_392" name="species_2" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="HMM_Modified_29" type="UserDefined" reversible="false">
      <Expression>
        Kcat*TCL1Active*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_399" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="TCL1Active" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_397" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="HMM_Modified_35" type="UserDefined" reversible="false">
      <Expression>
        Kcat*mTORC1Active*S6K1Inactive/(km+S6K1Inactive)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="S6K1Inactive" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_401" name="km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="mTORC1Active" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="HMM_Modified_36" type="UserDefined" reversible="false">
      <Expression>
        Kcat*S6K1Active*IRS1Active/(km+IRS1Active)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="IRS1Active" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_406" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="S6K1Active" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_404" name="km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="HMM_Modified_37" type="UserDefined" reversible="false">
      <Expression>
        Kcat*Dabrafenib*bRafMutated/(km+bRafMutated)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_411" name="Dabrafenib" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_410" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="bRafMutated" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000756"/>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/27015094"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-25T09:34:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL></vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Yang</vCard:Family>
                <vCard:Given>Kun</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Beijing National Laboratory for Molecular Sciences</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>efairbanks@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Fairbanks</vCard:Family>
                <vCard:Given>Emma Louise</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <CopasiMT:hasPart rdf:resource="urn:miriam:efo:0007815"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.pathway:map04010"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.pathway:map04151"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:reactome:R-HSA-2219528"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:reactome:R-HSA-5683057"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000666"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1609190000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000848"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Pappalardo2016 - PI3K/AKT and MAPK Signaling
Pathways in Melanoma Cancer</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/27015094" title="Access to this publication">Computational Modeling of
    PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer.</a>
      </div>
      <div class="bibo:authorList">Pappalardo F, Russo G, Candido S,
  Pennisi M, Cavalieri S, Motta S, McCubrey JA, Nicoletti F, Libra
  M.</div>
      <div class="bibo:Journal">PLoS ONE 2016; 11(3): e0152104</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Malignant melanoma is an aggressive tumor of the skin and
    seems to be resistant to current therapeutic approaches.
    Melanocytic transformation is thought to occur by sequential
    accumulation of genetic and molecular alterations able to
    activate the Ras/Raf/MEK/ERK (MAPK) and/or the PI3K/AKT (AKT)
    signalling pathways. Specifically, mutations of B-RAF activate
    MAPK pathway resulting in cell cycle progression and apoptosis
    prevention. According to these findings, MAPK and AKT pathways
    may represent promising therapeutic targets for an otherwise
    devastating disease.Here we show a computational model able to
    simulate the main biochemical and metabolic interactions in the
    PI3K/AKT and MAPK pathways potentially involved in melanoma
    development. Overall, this computational approach may
    accelerate the drug discovery process and encourages the
    identification of novel pathway activators with consequent
    development of novel antioncogenic compounds to overcome tumor
    cell resistance to conventional therapeutic agents. The source
    code of the various versions of the model are available as S1
    Archive.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/MODEL1609190000">MODEL1609190000</a>.</p>
      <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database:
  An enhanced, curated and annotated resource for published
  quantitative kinetic models</a>.</p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication</a> for more information.</p>
    </div>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Melanoma cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:12:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000848"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_48" name="boundRTK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:27:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.10.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17660"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="freeRTK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:46:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.10.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17660"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="SosActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:48:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K03099"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q07889"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="SosInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:49:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K03099"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q07889"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="RasActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:36:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K07829"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P10301"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="RasInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:48:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K07829"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P10301"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Raf1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:32:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04366"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Raf1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:32:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04366"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="MekActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:58:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.12.2"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04368"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02750"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="MekInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:59:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.12.2"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04368"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02750"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="ErkActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:40:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K05111"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P28482"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="ErkInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:45:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K05111"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P28482"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="P90RskActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000029187"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="P90RskInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:07:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000029187"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="PI3KActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:12:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.1.137"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K00914"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="PI3KInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:16:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.1.137"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K00914"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="AktActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:20:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000029189"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="AktInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000029189"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="C3GActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:35:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K06277"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q13905"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="C3GInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:37:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K06277"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q13905"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="Rap1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:35:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04353"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P62834"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="Rap1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:36:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04353"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P62834"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="GF" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:52:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20424"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="PP2AActive" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:20:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:3.1.3.16"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K01090"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P67775"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>http://link.springer.com/article/10.1007%2Fs10555-008-9119-x</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="Raf1PPtase" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:33:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.orthology:K01090"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="RasGapActive" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:41:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04352"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20936"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="Rap1Gap" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:36:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K17700"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47736"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="proRTK" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:32:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="PIP3Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:16:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C05981"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="PIP3Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:20:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C05981"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="PTENActive" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:32:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K01110"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P60484"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="IRS1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:58:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K16172"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P35568"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="IRS1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:58:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K16172"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P35568"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="PDK1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:07:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.2"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K12077"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q15118"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="PDK1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:07:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.2"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K12077"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q15118"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="HSP90-Cdc37Active" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:55:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1990565"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000005201"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="PHLPPActive" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:07:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:3.1.3.16"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K16340"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="mTORC2Active" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:05:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P42345"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031932"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="TCL1Active" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:49:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K10167"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P56279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="CTMPActive" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:37:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K16339"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q5T1C6"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="mTORC1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:00:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P42345"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031931"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="mTORC1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:05:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P42345"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0031931"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="S6K1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:48:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04688"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P23443"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="S6K1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:48:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04688"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P23443"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="bRafMutated" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_92">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C40430"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:31:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04365"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P15056"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>We simulated the A375 cell lines having the bRaf mutation in this way:

1) We introduced the new species bRafMutated; with the same initaila concentration of bRafInactive (120000)
2) We deleted the bRaf activation by Rap1 as the new species bRafMutated is not affected by this signalling (the same applies for Ras)
3) We inhibited the deactivation of Braf by Raf1PPtase (as Raf1PPtase does not anymore influence Braf)
4) bRafMutated accomplish the Mek activation subsituting the not mutated species bRaf</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="Dabrafenib" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:38:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:75045"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D10064"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="bRafMutatedInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_94">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C40430"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:35:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ec-code:2.7.11.1"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.orthology:K04365"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P15056"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="probRafMutated" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_48" name="GF_Binding_Unbinding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T10:30:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030971"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4842" name="k1" value="2.18503e-05"/>
          <Constant key="Parameter_4841" name="k2" value="0.121008"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4842"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_70"/>
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4841"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Sos_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4840" name="Kcat" value="694.731"/>
          <Constant key="Parameter_4839" name="km" value="6.08607e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4839"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Ras_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4838" name="Kcat" value="32.344"/>
          <Constant key="Parameter_4837" name="km" value="35954.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_4838"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_4837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Ras_Feedback_Deactivation_RasGap" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4836" name="Kcat" value="1509.36"/>
          <Constant key="Parameter_4866" name="km" value="1.43241e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_4836"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Parameter_4866"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Raf1_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4865" name="Kcat" value="0.884096"/>
          <Constant key="Parameter_4864" name="km" value="62464.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4865"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_4864"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Raf1_Feedback_Deactivation_Raf1PPtase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4863" name="Kcat" value="0.126329"/>
          <Constant key="Parameter_4862" name="km" value="1061.71"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_4863"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_4862"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Mek_Activation_Raf1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4613" name="Kcat" value="185.759"/>
          <Constant key="Parameter_4612" name="km" value="4.76835e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_4613"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_4612"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="Mek_Feedback_Deactivation_PP2A" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4611" name="Kcat" value="2.83243"/>
          <Constant key="Parameter_4610" name="km" value="518753"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_4611"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_4610"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="Erk_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4609" name="Kcat" value="9.85367"/>
          <Constant key="Parameter_4608" name="km" value="1.00734e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_4609"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_4608"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Erk_Feedback_Deactivation_PP2A" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>http://link.springer.com/article/10.1007%2Fs10555-008-9119-x</pre>
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4607" name="Kcat" value="8.8912"/>
          <Constant key="Parameter_4606" name="km" value="3.49649e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4607"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4606"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="P90Rsk_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4605" name="Kcat" value="0.0213697"/>
          <Constant key="Parameter_4580" name="km" value="763523"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_4605"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_4580"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="P90Rsk_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4579" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4579"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="Sos_Feedback_Deactivation_P90Rsk" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>https://en.wikipedia.org/wiki/Ribosomal_s6_kinase#/media/File:P90Rsk.svg</pre>
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4578" name="Kcat" value="1611.97"/>
          <Constant key="Parameter_4577" name="km" value="896896"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_4578"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Parameter_4577"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="PI3K_Activation_RTK" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4576" name="Kcat" value="10.6737"/>
          <Constant key="Parameter_4575" name="km" value="184912"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_4576"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_4575"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="PI3K_Activation_Ras" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4574" name="Kcat" value="0.0771067"/>
          <Constant key="Parameter_4573" name="km" value="272056"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_4574"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_4573"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="PI3K_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4572" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4572"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="Akt_Activation_PI3K" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4571" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4570" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_4571"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_4570"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="Raf1_Deactivation_Akt" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4569" name="Kcat" value="15.1212"/>
          <Constant key="Parameter_4568" name="km" value="119355"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_4569"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_4568"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="RTK_Degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4567" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4567"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="C3G_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4566" name="Kcat" value="694.731"/>
          <Constant key="Parameter_4565" name="km" value="6.08607e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Parameter_4566"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_4565"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="C3G_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4564" name="k1" value="2.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4564"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="Rap1_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4563" name="Kcat" value="32.344"/>
          <Constant key="Parameter_4562" name="km" value="35954.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Parameter_4563"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_4562"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="Rap1_Feedback_Deactivation_Rap1Gap" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4561" name="Kcat" value="1509.36"/>
          <Constant key="Parameter_4560" name="km" value="1.43241e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_4561"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_4560"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="Mek_Activation_bRaf" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4559" name="Kcat" value="185.759"/>
          <Constant key="Parameter_4558" name="km" value="4.76835e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_4559"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Parameter_4558"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="RTK_Production" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4557" name="v" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4557"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="RTK_Degradation_Free" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4556" name="k1" value="0.00125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4556"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="PIP3_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4555" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4554" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_4555"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Parameter_4554"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="PIP3_Feedback_Deactivation_PTEN" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4553" name="Kcat" value="2.83243"/>
          <Constant key="Parameter_4552" name="km" value="518753"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_4553"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_4552"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="Akt_Activation_PIP3" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4551" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4550" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_4551"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_4550"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="PI3K_Activation_IRS1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4549" name="Kcat" value="0.0771067"/>
          <Constant key="Parameter_4548" name="km" value="272056"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_4549"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Parameter_4548"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="IRS1_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4547" name="Kcat" value="10.6737"/>
          <Constant key="Parameter_4546" name="km" value="184912"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_4547"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Parameter_4546"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="PDK1_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4545" name="Kcat" value="9.85367"/>
          <Constant key="Parameter_4544" name="km" value="1.00734e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Parameter_4545"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_4544"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="PDK1_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4543" name="k1" value="2.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4543"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="Akt_Activation_PDK1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4542" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4541" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Parameter_4542"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Parameter_4541"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="Akt_Feedback_Activation_HSP90-Cdc37" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4540" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4539" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_4540"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_4539"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="Akt_Feedback_Deactivation_PHLPP" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4538" name="Kcat" value="0.126329"/>
          <Constant key="Parameter_4537" name="km" value="1061.71"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Parameter_4538"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Parameter_4537"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="Akt_Feedback_Activation_mTORC2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4536" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4535" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_4536"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Parameter_4535"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="Akt_Feedback_Activation_TCL1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4534" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4533" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Parameter_4534"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Parameter_4533"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="Akt_Feedback_Deactivation_CTMP" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4532" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4531" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Parameter_4532"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_4531"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="Akt_Feedback_Deactivation_PP2A" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4530" name="Kcat" value="0.126329"/>
          <Constant key="Parameter_4529" name="km" value="1061.71"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_4530"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_4529"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="Erk_Feedback_Deactivation_Raf1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>http://link.springer.com/article/10.1007%2Fs10555-008-9119-x</pre>
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4528" name="Kcat" value="8.8912"/>
          <Constant key="Parameter_4527" name="km" value="3.49649e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_4528"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_4527"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="Sos_Feedback_Deactivation_Erk" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>http://link.springer.com/article/10.1007%2Fs10555-008-9119-x</pre>
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4526" name="Kcat" value="0.0213697"/>
          <Constant key="Parameter_4525" name="km" value="763523"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Parameter_4526"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Parameter_4525"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="mTORC1_Activation_Akt" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4524" name="Kcat" value="15.1212"/>
          <Constant key="Parameter_4523" name="km" value="119355"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_4524"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_4523"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="S6K1_Activation_mTORC1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4522" name="Kcat" value="0.0213697"/>
          <Constant key="Parameter_4521" name="km" value="763523"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Parameter_4522"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_4521"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="IRS1_Feedback_Deactivation_S6K1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4520" name="Kcat" value="1611.97"/>
          <Constant key="Parameter_4519" name="km" value="896896"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_4520"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Parameter_4519"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="Dabrafenib_degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>The k1 parameter was set in a way that it reflects the half life of Dabrafenib drug i.e., 10hrs

C(t)=C0*e^(-ket) where ke is the half life constant.</pre>
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4518" name="k1" value="1.92527e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4518"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="bRaf_Deactivation_Dabrafenib" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:52:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4517" name="Kcat" value="3.19e+13"/>
          <Constant key="Parameter_4516" name="km" value="3200"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_4517"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Parameter_4516"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="bRafMutated_Production" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-15T11:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4515" name="v" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4515"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[boundRTK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[freeRTK]" value="4.8177126856000067e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[SosActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[SosInactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[RasActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[RasInactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Raf1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Raf1Inactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[MekActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[MekInactive]" value="3.6132845141999998e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[ErkActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[ErkInactive]" value="3.6132845141999998e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[P90RskActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[P90RskInactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PI3KActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PI3KInactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[AktActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[AktInactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[C3GActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[C3GInactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Rap1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Rap1Inactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[GF]" value="6.0233452851714002e+27" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PP2AActive]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Raf1PPtase]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[RasGapActive]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Rap1Gap]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[proRTK]" value="6.0221408570000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PIP3Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PIP3Inactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PTENActive]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[IRS1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[IRS1Inactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PDK1Inactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PDK1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[HSP90-Cdc37Active]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[PHLPPActive]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[mTORC2Active]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[TCL1Active]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[CTMPActive]" value="7.2265690284000006e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[mTORC1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[mTORC1Inactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[S6K1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[S6K1Inactive]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[bRafMutated]" value="7.2265690284000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Dabrafenib]" value="75276760712.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[bRafMutatedInactive]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[probRafMutated]" value="6.0221408570000002e+20" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[GF_Binding_Unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[GF_Binding_Unbinding],ParameterGroup=Parameters,Parameter=k1" value="2.18503e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[GF_Binding_Unbinding],ParameterGroup=Parameters,Parameter=k2" value="0.121008" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="694.73099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Activation],ParameterGroup=Parameters,Parameter=km" value="6086070" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Ras_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="32.344000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=km" value="35954.300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Ras_Feedback_Deactivation_RasGap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Ras_Feedback_Deactivation_RasGap],ParameterGroup=Parameters,Parameter=Kcat" value="1509.3599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Ras_Feedback_Deactivation_RasGap],ParameterGroup=Parameters,Parameter=km" value="1432410" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.88409599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=km" value="62464.599999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Feedback_Deactivation_Raf1PPtase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Feedback_Deactivation_Raf1PPtase],ParameterGroup=Parameters,Parameter=Kcat" value="0.126329" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Feedback_Deactivation_Raf1PPtase],ParameterGroup=Parameters,Parameter=km" value="1061.71" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Activation_Raf1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Activation_Raf1],ParameterGroup=Parameters,Parameter=Kcat" value="185.75899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Activation_Raf1],ParameterGroup=Parameters,Parameter=km" value="4768350" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Feedback_Deactivation_PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Feedback_Deactivation_PP2A],ParameterGroup=Parameters,Parameter=Kcat" value="2.83243" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Feedback_Deactivation_PP2A],ParameterGroup=Parameters,Parameter=km" value="518753" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="9.8536699999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=km" value="1007340" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Feedback_Deactivation_PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Feedback_Deactivation_PP2A],ParameterGroup=Parameters,Parameter=Kcat" value="8.8911999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Feedback_Deactivation_PP2A],ParameterGroup=Parameters,Parameter=km" value="3496490" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[P90Rsk_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[P90Rsk_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.021369699999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[P90Rsk_Activation],ParameterGroup=Parameters,Parameter=km" value="763523" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[P90Rsk_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[P90Rsk_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.0050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Feedback_Deactivation_P90Rsk]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Feedback_Deactivation_P90Rsk],ParameterGroup=Parameters,Parameter=Kcat" value="1611.97" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Feedback_Deactivation_P90Rsk],ParameterGroup=Parameters,Parameter=km" value="896896" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_RTK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_RTK],ParameterGroup=Parameters,Parameter=Kcat" value="10.6737" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_RTK],ParameterGroup=Parameters,Parameter=km" value="184912" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_Ras]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=Kcat" value="0.0771067" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=km" value="272056" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.0050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PI3K]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PI3K],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PI3K],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Deactivation_Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=Kcat" value="15.1212" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=km" value="119355" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[RTK_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[RTK_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[C3G_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[C3G_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="694.73099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[C3G_Activation],ParameterGroup=Parameters,Parameter=km" value="6086070" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[C3G_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[C3G_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="2.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Rap1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Rap1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="32.344000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Rap1_Activation],ParameterGroup=Parameters,Parameter=km" value="35954.300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Rap1_Feedback_Deactivation_Rap1Gap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Rap1_Feedback_Deactivation_Rap1Gap],ParameterGroup=Parameters,Parameter=Kcat" value="1509.3599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Rap1_Feedback_Deactivation_Rap1Gap],ParameterGroup=Parameters,Parameter=km" value="1432410" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Activation_bRaf]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Activation_bRaf],ParameterGroup=Parameters,Parameter=Kcat" value="185.75899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Mek_Activation_bRaf],ParameterGroup=Parameters,Parameter=km" value="4768350" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[RTK_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[RTK_Production],ParameterGroup=Parameters,Parameter=v" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[RTK_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[RTK_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.00125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PIP3_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PIP3_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PIP3_Activation],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN],ParameterGroup=Parameters,Parameter=Kcat" value="2.83243" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN],ParameterGroup=Parameters,Parameter=km" value="518753" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PIP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PIP3],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PIP3],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_IRS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_IRS1],ParameterGroup=Parameters,Parameter=Kcat" value="0.0771067" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PI3K_Activation_IRS1],ParameterGroup=Parameters,Parameter=km" value="272056" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[IRS1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[IRS1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="10.6737" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[IRS1_Activation],ParameterGroup=Parameters,Parameter=km" value="184912" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PDK1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PDK1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="9.8536699999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PDK1_Activation],ParameterGroup=Parameters,Parameter=km" value="1007340" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PDK1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[PDK1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="2.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PDK1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PDK1],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Activation_PDK1],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP],ParameterGroup=Parameters,Parameter=Kcat" value="0.126329" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP],ParameterGroup=Parameters,Parameter=km" value="1061.71" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_mTORC2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_mTORC2],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_mTORC2],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_TCL1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_TCL1],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Activation_TCL1],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_CTMP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_CTMP],ParameterGroup=Parameters,Parameter=Kcat" value="0.056627900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_CTMP],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_PP2A],ParameterGroup=Parameters,Parameter=Kcat" value="0.126329" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Akt_Feedback_Deactivation_PP2A],ParameterGroup=Parameters,Parameter=km" value="1061.71" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Feedback_Deactivation_Raf1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Feedback_Deactivation_Raf1],ParameterGroup=Parameters,Parameter=Kcat" value="8.8911999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Erk_Feedback_Deactivation_Raf1],ParameterGroup=Parameters,Parameter=km" value="3496490" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Feedback_Deactivation_Erk]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Feedback_Deactivation_Erk],ParameterGroup=Parameters,Parameter=Kcat" value="0.021369699999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Sos_Feedback_Deactivation_Erk],ParameterGroup=Parameters,Parameter=km" value="763523" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[mTORC1_Activation_Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[mTORC1_Activation_Akt],ParameterGroup=Parameters,Parameter=Kcat" value="15.1212" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[mTORC1_Activation_Akt],ParameterGroup=Parameters,Parameter=km" value="119355" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[S6K1_Activation_mTORC1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[S6K1_Activation_mTORC1],ParameterGroup=Parameters,Parameter=Kcat" value="0.021369699999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[S6K1_Activation_mTORC1],ParameterGroup=Parameters,Parameter=km" value="763523" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[IRS1_Feedback_Deactivation_S6K1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[IRS1_Feedback_Deactivation_S6K1],ParameterGroup=Parameters,Parameter=Kcat" value="1611.97" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[IRS1_Feedback_Deactivation_S6K1],ParameterGroup=Parameters,Parameter=km" value="896896" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Dabrafenib_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[Dabrafenib_degradation],ParameterGroup=Parameters,Parameter=k1" value="1.9252699999999999e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[bRaf_Deactivation_Dabrafenib]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[bRaf_Deactivation_Dabrafenib],ParameterGroup=Parameters,Parameter=Kcat" value="31900000000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[bRaf_Deactivation_Dabrafenib],ParameterGroup=Parameters,Parameter=km" value="3200" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[bRafMutated_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Reactions[bRafMutated_Production],ParameterGroup=Parameters,Parameter=v" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 4.8177126856000067e+25 0 0 0 0 0 0 7.2265690284000006e+25 7.2265690284000006e+25 0 0 0 75276760712.5 6.0221408570000002e+20 3.6132845141999998e+26 3.6132845141999998e+26 7.2265690284000006e+25 7.2265690284000006e+25 0 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 6.0233452851714002e+27 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 6.0221408570000002e+20 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 7.2265690284000006e+25 6.0221408570000002e+20 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_26" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="180000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="180000"/>
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
    <Task key="Task_24" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_23" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_22" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_15" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_17" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_10" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_9" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="plot" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="[Dabrafenib]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[Dabrafenib],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ErkActive]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[ErkActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[bRafMutated]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Pappalardo2016 - PI3K/AKT and MAPK Signaling Pathways in Melanoma Cancer,Vector=Compartments[Melanoma cell],Vector=Metabolites[bRafMutated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000666_20180314172007.xml">
    <SBMLMap SBMLid="Akt_Activation_PDK1" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="Akt_Activation_PIP3" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_HSP90_Cdc37" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_TCL1" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_mTORC2" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="Akt_Feedback_Deactivation_CTMP" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="Akt_Feedback_Deactivation_PHLPP" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="Akt_Feedback_Deactivation_PP2A" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="CTMPActive" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="Dabrafenib" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="Dabrafenib_degradation" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="Erk_Feedback_Deactivation_Raf1" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="HMM_Modified" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="HMM_Modified_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="HMM_Modified_10" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="HMM_Modified_11" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="HMM_Modified_12" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="HMM_Modified_13" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="HMM_Modified_14" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="HMM_Modified_15" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="HMM_Modified_16" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="HMM_Modified_17" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="HMM_Modified_18" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="HMM_Modified_19" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="HMM_Modified_2" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="HMM_Modified_20" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="HMM_Modified_21" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="HMM_Modified_22" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="HMM_Modified_23" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="HMM_Modified_24" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="HMM_Modified_25" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="HMM_Modified_26" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="HMM_Modified_27" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="HMM_Modified_28" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="HMM_Modified_29" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="HMM_Modified_3" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="HMM_Modified_30" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="HMM_Modified_31" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="HMM_Modified_32" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="HMM_Modified_33" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="HMM_Modified_34" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="HMM_Modified_35" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="HMM_Modified_36" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="HMM_Modified_37" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="HMM_Modified_4" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="HMM_Modified_5" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="HMM_Modified_6" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="HMM_Modified_7" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="HMM_Modified_8" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="HMM_Modified_9" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="HSP90_Cdc37Active" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="IRS1Active" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="IRS1Inactive" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="IRS1_Activation" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="IRS1_Feedback_Deactivation_S6K1" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="PDK1Active" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="PDK1Inactive" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="PDK1_Activation" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="PDK1_Deactivation" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="PHLPPActive" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="PI3K_Activation_IRS1" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="PIP3Active" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="PIP3Inactive" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="PIP3_Activation" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="PIP3_Feedback_Deactivation_PTEN" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="PTENActive" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="S6K1Active" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="S6K1Inactive" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="S6K1_Activation_mTORC1" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="Sos_Feedback_Deactivation_Erk" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="TCL1Active" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="bRafMutated" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="bRafMutatedInactive" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="bRafMutated_Production" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="bRaf_Deactivation_Dabrafenib" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="compartment_0" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="mTORC1Active" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="mTORC1Inactive" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="mTORC1_Activation_Akt" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="mTORC2Active" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="probRafMutated" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="reaction_0" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="reaction_13" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="reaction_19" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="reaction_20" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="reaction_21" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="reaction_22" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="reaction_23" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="reaction_24" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="reaction_27" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="reaction_28" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="reaction_29" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="species_0" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="species_12" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="species_13" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="species_14" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="species_19" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="species_20" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="species_21" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="species_22" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="species_25" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="species_26" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="species_27" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="species_28" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="species_29" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="species_30" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_57"/>
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
  </ListOfUnitDefinitions>
</COPASI>
