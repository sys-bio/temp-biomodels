<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2016-11-28 16:41:53 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="16" versionDevel="104" copasiSourcesModified="0">
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
        k1*PRODUCT&lt;substrate_i&gt;
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
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Menten_Explicit_Enzyme_1" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_0*species_3/(km+species_3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="species_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_258" name="species_3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Menten_Explicit_Enzyme_2" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_2*species_5/(km+species_5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="species_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="species_5" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Menten_Explicit_Enzyme_3" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_28*species_4/(km+species_4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="species_28" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="species_4" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Menten_Explicit_Enzyme_4" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_4*species_7/(km+species_7)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="species_4" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="species_7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Menten_Explicit_Enzyme_5" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_27*species_6/(km+species_6)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="species_27" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="species_6" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Menten_Explicit_Enzyme_6" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_6*species_9/(km+species_9)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="species_6" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="species_9" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Menten_Explicit_Enzyme_7" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_26*species_8/(km+species_8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="species_26" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="species_8" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Menten_Explicit_Enzyme_8" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_8*species_11/(km+species_11)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="species_11" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="species_8" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Menten_Explicit_Enzyme_9" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_26*species_10/(km+species_10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="species_10" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="species_26" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Menten_Explicit_Enzyme_10" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_10*species_13/(km+species_13)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="species_10" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="species_13" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Menten_Explicit_Enzyme_11" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_12*species_2/(km+species_2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="species_12" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="species_2" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Menten_Explicit_Enzyme_12" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_0*species_15/(km+species_15)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="species_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="species_15" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Menten_Explicit_Enzyme_13" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_4*species_15/(km+species_15)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="species_15" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="species_4" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Menten_Explicit_Enzyme_14" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_14*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="species_14" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Menten_Explicit_Enzyme_15" type="UserDefined" reversible="false">
      <Expression>
        Kcat*species_16*species_6/(km+species_6)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="species_16" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_320" name="species_6" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="MM Explicit Enzyme_1" type="UserDefined" reversible="false">
      <Expression>
        kcat*species_0*species_20/(km+species_20)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="species_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_324" name="species_20" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="MM Explicit Enzyme_2" type="UserDefined" reversible="false">
      <Expression>
        kcat*species_19*species_22/(km+species_22)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="species_19" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="species_22" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="MM Explicit Enzyme_3" type="UserDefined" reversible="false">
      <Expression>
        kcat*species_29*species_21/(km+species_21)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="species_21" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="species_29" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="MM Explicit Enzyme_4" type="UserDefined" reversible="false">
      <Expression>
        kcat*species_21*species_24/(km+species_24)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_335" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="species_21" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_336" name="species_24" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="MM Explicit Enzyme_5" type="UserDefined" reversible="false">
      <Expression>
        kcat*species_27*species_23/(km+species_23)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="species_23" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="species_27" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="MM Explicit Enzyme_6" type="UserDefined" reversible="false">
      <Expression>
        kcat*species_23*species_9/(km+species_9)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="species_23" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="species_9" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="MM Explicit Enzyme_7" type="UserDefined" reversible="false">
      <Expression>
        kcat*species_4*species_24/(km+species_24)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_347" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="species_24" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="species_4" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_3" name="Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T09:09:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>tvarusai@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Varusai</vCard:Family>
            <vCard:Given>Thawfeek</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0007173"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml" />
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="compartment" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T10:41:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0097234"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="boundEGFReceptor" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T10:41:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9QX70"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          EGFR Receptor bound to EGF; Initial value was estimated from experiments
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="freeEGFReceptor" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:48:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9QX70"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Free EGF receptor; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="SosActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9Z1I1"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of SOS; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="SosInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9Z1I1"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of SOS; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="RasActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:interpro:IPR020849"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of Ras; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="RasInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:interpro:IPR020849"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of Ras; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Raf1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11345"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of Raf1; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Raf1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11345"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of Raf1; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="MekActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:49:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P36506"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q01986"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of MEK; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="MekInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P36506"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q01986"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of MEK; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="ErkActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:45:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P21708"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P63086"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of ERK; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="ErkInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:46:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P21708"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P63086"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of ERK; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="P90RskActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q63531"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9Z1I2"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of P90RSK; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="P90RskInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q63531"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9Z1I2"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of P90RSK; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="PI3KActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q63787"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of PI3K; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="PI3KInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q63787"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of PI3K; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="AktActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T10:42:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47196"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47197"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q63484"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of Akt; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="AktInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T14:00:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47196"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47197"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q63484"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of Akt; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="degradedEGFReceptor" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:28:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9QX70"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Degraded species of EGFR; Initial value estimated from experiments
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="C3GActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:22:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9QYV3"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of C3G; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="C3GInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:27:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9QYV3"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of C3G; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Rap1Active" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q62636"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of Rap1; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Rap1Inactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q62636"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of Rap1; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="bRafActive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T14:39:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:F1M9C3"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of BRaf; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="bRafInactive" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:21:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:F1M9C3"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Inactive species of BRaf; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="EGF" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P07522"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Epidermal Growth Factor; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="PP2AActive" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000159"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active species of PP2A; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Raf1PPtase" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1903293"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Raf1 phosphatase; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="RasGapActive" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P50904"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Active GTPase of Ras; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="Rap1Gap" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:F1LV89"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          GTPase of Rap1; Initial value taken from Brown et al 2004
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="proEGFReceptor" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T15:50:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9QX70"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Species preceding active EGF receptor; Initial value estimated from experiments
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="EGF_Binding_Unbinding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000012"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4854" name="k1" value="2.18503e-005"/>
          <Constant key="Parameter_4853" name="k2" value="0.121008"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4854"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_51"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4853"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Sos_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4852" name="Kcat" value="694.731"/>
          <Constant key="Parameter_4851" name="km" value="6.08607e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4852"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4851"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Sos_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:25:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000012"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters were estimated from experiments
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4850" name="k1" value="2.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4850"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Ras_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4849" name="Kcat" value="32.344"/>
          <Constant key="Parameter_4848" name="km" value="35954.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4849"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4848"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Ras_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4847" name="Kcat" value="1509.36"/>
          <Constant key="Parameter_4846" name="km" value="1.43241e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4847"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_4846"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Raf1_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4845" name="Kcat" value="0.884096"/>
          <Constant key="Parameter_4844" name="km" value="62464.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4845"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_4844"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Raf1_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4843" name="Kcat" value="0.126329"/>
          <Constant key="Parameter_4842" name="km" value="1061.71"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_4843"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_4842"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Mek_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4841" name="Kcat" value="185.759"/>
          <Constant key="Parameter_4840" name="km" value="4.76835e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_4841"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_4840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Mek_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4839" name="Kcat" value="2.83243"/>
          <Constant key="Parameter_4838" name="km" value="518753"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_4839"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_4838"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Erk_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4837" name="Kcat" value="9.85367"/>
          <Constant key="Parameter_4836" name="km" value="1.00734e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_4837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_4836"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Erk_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4835" name="Kcat" value="8.8912"/>
          <Constant key="Parameter_4834" name="km" value="3.49649e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_4835"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_4834"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="P90Rsk_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4833" name="Kcat" value="0.0213697"/>
          <Constant key="Parameter_4832" name="km" value="763523"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_4833"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_4832"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="P90Rsk_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:25:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000012"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters were estimated from experiments
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4831" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4831"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Sos_Feedback_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4830" name="Kcat" value="1611.97"/>
          <Constant key="Parameter_4829" name="km" value="896896"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_4830"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_4829"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="PI3K_Activation_EGFR" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4828" name="Kcat" value="10.6737"/>
          <Constant key="Parameter_4827" name="km" value="184912"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_4828"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_4827"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="PI3K_Activation_Ras" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4826" name="Kcat" value="0.0771067"/>
          <Constant key="Parameter_4825" name="km" value="272056"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_4826"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_4825"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="PI3K_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000012"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4824" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4824"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Akt_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T14:02:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4823" name="Kcat" value="0.0566279"/>
          <Constant key="Parameter_4822" name="km" value="653951"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_4823"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Parameter_4822"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Akt_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:24:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000012"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters were estimated from experiments
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4821" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4821"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Raf1_Deactivation_Akt" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4820" name="Kcat" value="15.1212"/>
          <Constant key="Parameter_4819" name="km" value="119355"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_4820"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_4819"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="EGFReceptor_Degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:25:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters were estimated from experiments
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4818" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4818"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="C3G_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4817" name="kcat" value="694.731"/>
          <Constant key="Parameter_4816" name="km" value="6.08607e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_4817"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Parameter_4816"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="C3G_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:25:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000012"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters were estimated from experiments
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4815" name="k1" value="2.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4815"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Rap1_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4814" name="kcat" value="32.344"/>
          <Constant key="Parameter_4813" name="km" value="35954.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_4814"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_4813"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Rap1_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4812" name="kcat" value="1509.36"/>
          <Constant key="Parameter_4811" name="km" value="1.43241e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_4812"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_4811"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="bRaf_Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4810" name="kcat" value="0.884096"/>
          <Constant key="Parameter_4809" name="km" value="62464.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_4810"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_4809"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="bRaf_Deactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4808" name="kcat" value="0.126329"/>
          <Constant key="Parameter_4807" name="km" value="1061.71"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_4808"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Parameter_4807"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Mek_Activation_bRaf" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:27:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4806" name="kcat" value="185.759"/>
          <Constant key="Parameter_4805" name="km" value="4.76835e+006"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_4806"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_4805"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="EGFReceptor_Production" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:25:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000001"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters were estimated from experiments
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4804" name="v" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4804"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="EGFReceptor_Degradtion_Free" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:25:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters were estimated from experiments
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4803" name="k1" value="0.00125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4803"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="bRaf_Activation_Ras" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-28T16:26:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000029"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameters taken from Brown et al 2004
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4802" name="kcat" value="0.884096"/>
          <Constant key="Parameter_4801" name="km" value="62464.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_4802"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_4801"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[boundEGFReceptor]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[freeEGFReceptor]" value="4.817713432000001e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[SosActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[SosInactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[RasActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[RasInactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Raf1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Raf1Inactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[MekActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[MekInactive]" value="3.613285074e+026" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[ErkActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[ErkInactive]" value="3.613285074e+026" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[P90RskActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[P90RskInactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[PI3KActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[PI3KInactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[AktActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[AktInactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[degradedEGFReceptor]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[C3GActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[C3GInactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Rap1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Rap1Inactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[bRafActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[bRafInactive]" value="7.226570148e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[EGF]" value="6.023346218358001e+027" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[PP2AActive]" value="7.226570148e+025" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Raf1PPtase]" value="7.226570148e+025" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[RasGapActive]" value="7.226570148e+025" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Rap1Gap]" value="7.226570148e+025" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[proEGFReceptor]" value="6.022141790000001e+020" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGF_Binding_Unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGF_Binding_Unbinding],ParameterGroup=Parameters,Parameter=k1" value="2.18503e-005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGF_Binding_Unbinding],ParameterGroup=Parameters,Parameter=k2" value="0.121008" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="694.731" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Activation],ParameterGroup=Parameters,Parameter=km" value="6086070" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="2.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Ras_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="32.344" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=km" value="35954.3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Ras_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Ras_Deactivation],ParameterGroup=Parameters,Parameter=Kcat" value="1509.36" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Ras_Deactivation],ParameterGroup=Parameters,Parameter=km" value="1432410" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.884096" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=km" value="62464.6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Deactivation],ParameterGroup=Parameters,Parameter=Kcat" value="0.126329" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Deactivation],ParameterGroup=Parameters,Parameter=km" value="1061.71" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="185.759" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Activation],ParameterGroup=Parameters,Parameter=km" value="4768350" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Deactivation],ParameterGroup=Parameters,Parameter=Kcat" value="2.83243" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Deactivation],ParameterGroup=Parameters,Parameter=km" value="518753" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Erk_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="9.853669999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=km" value="1007340" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Erk_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Erk_Deactivation],ParameterGroup=Parameters,Parameter=Kcat" value="8.8912" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Erk_Deactivation],ParameterGroup=Parameters,Parameter=km" value="3496490" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[P90Rsk_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[P90Rsk_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.0213697" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[P90Rsk_Activation],ParameterGroup=Parameters,Parameter=km" value="763523" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[P90Rsk_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[P90Rsk_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Feedback_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Feedback_Deactivation],ParameterGroup=Parameters,Parameter=Kcat" value="1611.97" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Sos_Feedback_Deactivation],ParameterGroup=Parameters,Parameter=km" value="896896" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Activation_EGFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Activation_EGFR],ParameterGroup=Parameters,Parameter=Kcat" value="10.6737" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Activation_EGFR],ParameterGroup=Parameters,Parameter=km" value="184912" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Activation_Ras]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=Kcat" value="0.0771067" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=km" value="272056" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[PI3K_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Akt_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Akt_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.0566279" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Akt_Activation],ParameterGroup=Parameters,Parameter=km" value="653951" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Akt_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Akt_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Deactivation_Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=Kcat" value="15.1212" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=km" value="119355" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGFReceptor_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGFReceptor_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[C3G_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[C3G_Activation],ParameterGroup=Parameters,Parameter=kcat" value="694.731" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[C3G_Activation],ParameterGroup=Parameters,Parameter=km" value="6086070" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[C3G_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[C3G_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="2.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Rap1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Rap1_Activation],ParameterGroup=Parameters,Parameter=kcat" value="32.344" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Rap1_Activation],ParameterGroup=Parameters,Parameter=km" value="35954.3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Rap1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Rap1_Deactivation],ParameterGroup=Parameters,Parameter=kcat" value="1509.36" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Rap1_Deactivation],ParameterGroup=Parameters,Parameter=km" value="1432410" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Activation],ParameterGroup=Parameters,Parameter=kcat" value="0.884096" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Activation],ParameterGroup=Parameters,Parameter=km" value="62464.6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Deactivation],ParameterGroup=Parameters,Parameter=kcat" value="0.126329" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Deactivation],ParameterGroup=Parameters,Parameter=km" value="1061.71" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Activation_bRaf]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Activation_bRaf],ParameterGroup=Parameters,Parameter=kcat" value="185.759" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[Mek_Activation_bRaf],ParameterGroup=Parameters,Parameter=km" value="4768350" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGFReceptor_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGFReceptor_Production],ParameterGroup=Parameters,Parameter=v" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGFReceptor_Degradtion_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[EGFReceptor_Degradtion_Free],ParameterGroup=Parameters,Parameter=k1" value="0.00125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Activation_Ras]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Activation_Ras],ParameterGroup=Parameters,Parameter=kcat" value="0.884096" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Reactions[bRaf_Activation_Ras],ParameterGroup=Parameters,Parameter=km" value="62464.6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_3"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 4.817713432000001e+025 0 0 0 0 0 0 0 0 0 0 0 0 0 7.226570148e+025 7.226570148e+025 3.613285074e+026 7.226570148e+025 7.226570148e+025 7.226570148e+025 7.226570148e+025 7.226570148e+025 7.226570148e+025 7.226570148e+025 3.613285074e+026 6.023346218358001e+027 7.226570148e+025 7.226570148e+025 7.226570148e+025 7.226570148e+025 6.022141790000001e+020 1 
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
        <Parameter name="Resolution" type="unsignedFloat" value="1e-009"/>
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
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="600"/>
        <Parameter name="StepSize" type="float" value="0.1"/>
        <Parameter name="Duration" type="float" value="60"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
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
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-006"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-012"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="1e-006"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-006"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[boundEGFReceptor]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[boundEGFReceptor],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[freeEGFReceptor]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[freeEGFReceptor],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SosActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[SosActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SosInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[SosInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[RasActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[RasActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[RasInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[RasInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Raf1Active]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Raf1Active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Raf1Inactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Raf1Inactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MekActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[MekActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MekInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[MekInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ErkActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[ErkActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ErkInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[ErkInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P90RskActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[P90RskActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P90RskInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[P90RskInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PI3KActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[PI3KActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PI3KInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[PI3KInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AktActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[AktActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AktInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[AktInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[degradedEGFReceptor]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[degradedEGFReceptor],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C3GActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[C3GActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C3GInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[C3GInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rap1Active]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Rap1Active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rap1Inactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[Rap1Inactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[bRafActive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[bRafActive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[bRafInactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model,Vector=Compartments[compartment],Vector=Metabolites[bRafInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Orton2009.XML">
    <SBMLMap SBMLid="compartment_0" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="reaction_0" COPASIkey="Reaction_0"/>
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
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="species_0" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="species_12" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="species_13" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="species_14" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="species_18" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="species_19" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="species_20" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="species_21" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="species_22" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="species_23" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="species_24" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="species_25" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="species_26" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="species_27" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="species_28" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="species_29" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="species_30" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_19"/>
  </SBMLReference>
</COPASI>
