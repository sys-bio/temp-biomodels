<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-05-11 14:17:17 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="23" versionDevel="184" copasiSourcesModified="0">
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
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="rPhRb_2" type="UserDefined" reversible="false">
      <Expression>
        (kPhRbCd*Cd+kPhRbCe*Ce+kPhRbCa*Ca)*RbE2f
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_263" name="Cd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="Ce" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="RbE2f" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="kPhRbCa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="kPhRbCd" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="kPhRbCe" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="rSyE2f_1" type="UserDefined" reversible="false">
      <Expression>
        kSyE2f+kSyE2fE2f*E2f/(jSyE2f+E2f)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="E2f" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="jSyE2f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kSyE2f" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="kSyE2fE2f" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="rDeP21_1" type="UserDefined" reversible="false">
      <Expression>
        (kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*CeP21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="Cdt2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="Ce" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_269" name="CeP21" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="Skp2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="aRc" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="kDeP21" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="kDeP21Cy" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="kDeP21aRc" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="rDeCa_2" type="UserDefined" reversible="false">
      <Expression>
        (kDeCa+kDeCaC1*C1)*CaP21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="C1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_287" name="CaP21" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="kDeCa" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="kDeCaC1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="rDeP53_1" type="UserDefined" reversible="false">
      <Expression>
        kDeP53/(jP53+Dam)*P53
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="Dam" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="P53" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="jP53" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="kDeP53" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="rDeP21_5" type="UserDefined" reversible="false">
      <Expression>
        (kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*iRc
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="Cdt2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="Ce" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="Skp2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="aRc" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_293" name="iRc" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="kDeP21" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="kDeP21Cy" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="kDeP21aRc" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="rSyP21_1" type="UserDefined" reversible="false">
      <Expression>
        kSyP21+kSyP21P53*P53
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="P53" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="kSyP21" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="kSyP21P53" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="rPhRb_1" type="UserDefined" reversible="false">
      <Expression>
        (kPhRbCd*Cd+kPhRbCe*Ce+kPhRbCa*Ca)*Rb
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_301" name="Cd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="Ce" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_299" name="Rb" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="kPhRbCa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="kPhRbCd" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="kPhRbCe" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="rPhC1_1" type="UserDefined" reversible="false">
      <Expression>
        (kPhC1+kPhC1Ce*Ce+kPhC1Ca*Ca)*C1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="C1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="Ca" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_311" name="Ce" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="kPhC1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="kPhC1Ca" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="kPhC1Ce" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="rDeP21_3" type="UserDefined" reversible="false">
      <Expression>
        (kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*P21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="Cdt2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="Ce" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="P21" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="Skp2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="aRc" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_319" name="kDeP21" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="kDeP21Cy" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="kDeP21aRc" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="rDeCe_2" type="UserDefined" reversible="false">
      <Expression>
        (kDeCe+kDeCeCa*Ca)*CeP21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_329" name="CeP21" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="kDeCe" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="kDeCeCa" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="rDsRc_3" type="UserDefined" reversible="false">
      <Expression>
        if(Dna lt 1,0,if(Dna gt 1,1*aRc,0.5*aRc))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="Dna" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_324" name="aRc" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="rDeCe_1" type="UserDefined" reversible="false">
      <Expression>
        (kDeCe+kDeCeCa*Ca)*Ce
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="Ce" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="kDeCe" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="kDeCeCa" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="rReDam_1" type="UserDefined" reversible="false">
      <Expression>
        (kReDam+kReDamP53*P53/(jDam+Dam))*Dam
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_335" name="Dam" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="P53" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_333" name="jDam" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="kReDam" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="kReDamP53" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="rPhC1_2" type="UserDefined" reversible="false">
      <Expression>
        (kPhC1+kPhC1Ce*Ce+kPhC1Ca*Ca)*E1C1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="Ce" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_339" name="E1C1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="kPhC1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="kPhC1Ca" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="kPhC1Ce" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="rDeP21_2" type="UserDefined" reversible="false">
      <Expression>
        (kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*CaP21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="Ca" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_347" name="CaP21" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_346" name="Cdt2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="Ce" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="Skp2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="aRc" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="kDeP21" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="kDeP21Cy" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="kDeP21aRc" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="rDeCa_1" type="UserDefined" reversible="false">
      <Expression>
        (kDeCa+kDeCaC1*C1)*Ca
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="C1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_359" name="Ca" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="kDeCa" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="kDeCaC1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="rPhRc_1" type="UserDefined" reversible="false">
      <Expression>
        kPhRc*(Ce+Ca)^n/(jCy^n+(Ce+Ca)^n)*Rc
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_354" name="Ce" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="Rc" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="jCy" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="kPhRc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="n" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="rDsRc_4" type="UserDefined" reversible="false">
      <Expression>
        if(Dna lt 1,0,if(Dna gt 1,1*iRc,0.5*iRc))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="Dna" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_366" name="iRc" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="rDeP21_4" type="UserDefined" reversible="false">
      <Expression>
        (kDeP21+kDeP21Cy*Skp2*(Ce+Ca)+kDeP21aRc*Cdt2*aRc)*iPcna
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="Ca" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="Cdt2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="Ce" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="Skp2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="aRc" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_369" name="iPcna" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_370" name="kDeP21" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kDeP21Cy" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="kDeP21aRc" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="rDePr_1" type="UserDefined" reversible="false">
      <Expression>
        (kDePr+kDeCaC1*C1)*Pr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_381" name="C1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="Pr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_379" name="kDeCaC1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="kDePr" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="rDsRc_1" type="UserDefined" reversible="false">
      <Expression>
        if(Dna lt 1,0,if(Dna gt 1,1*Rc,0.5*Rc))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="Dna" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_375" name="Rc" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="rDsRc_2" type="UserDefined" reversible="false">
      <Expression>
        if(Dna lt 1,0,if(Dna gt 1,1*pRc,0.5*pRc))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="Dna" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="pRc" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/doi/10.1073/pnas.1715345115"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T11:13:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>matt.maire@free.fr</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>MAIRE</vCard:Family>
                <vCard:Given>Matthieu</vCard:Given>
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
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T11:13:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0042769"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0051726"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1703030000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Heldt2018 - Proliferation-quiescence decision
in response to DNA damage</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/29463760" title="Access to this publication">A comprehensive model for
    the proliferation-quiescence decision in response to endogenous
    DNA damage in human cells.</a>
      </div>
      <div class="bibo:authorList">Heldt FS, Barr AR, Cooper S, Bakal
  C, Novák B.</div>
      <div class="bibo:Journal">Proc. Natl. Acad. Sci. U.S.A. 2018 Feb;
  :</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Human cells that suffer mild DNA damage can enter a
    reversible state of growth arrest known as quiescence. This
    decision to temporarily exit the cell cycle is essential to
    prevent the propagation of mutations, and most cancer cells
    harbor defects in the underlying control system. Here we
    present a mechanistic mathematical model to study the
    proliferation-quiescence decision in nontransformed human
    cells. We show that two bistable switches, the restriction
    point (RP) and the G1/S transition, mediate this decision by
    integrating DNA damage and mitogen signals. In particular, our
    data suggest that the cyclin-dependent kinase inhibitor p21
    (Cip1/Waf1), which is expressed in response to DNA damage,
    promotes quiescence by blocking positive feedback loops that
    facilitate G1 progression downstream of serum stimulation.
    Intriguingly, cells exploit bistability in the RP to convert
    graded p21 and mitogen signals into an all-or-nothing
    cell-cycle response. The same mechanism creates a window of
    opportunity where G1 cells that have passed the RP can revert
    to quiescence if exposed to DNA damage. We present experimental
    evidence that cells gradually lose this ability to revert to
    quiescence as they progress through G1 and that the onset of
    rapid p21 degradation at the G1/S transition prevents this
    response altogether, insulating S phase from mild, endogenous
    DNA damage. Thus, two bistable switches conspire in the early
    cell cycle to provide both sensitivity and robustness to
    external stimuli.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/MODEL1703030000">MODEL1703030000</a>.</p>
      <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/25414348" target="_blank">Chelliah V et al. BioModels: ten-year
  anniversary. Nucl. Acids Res. 2015, 43(Database
  issue):D542-8</a>.</p>
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
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T11:15:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Retinoblastoma_protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:03:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q08999" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) hypo-phosphorylated Rb</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Retinoblastoma_protein_hyperphosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002221" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:03:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q08999" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) hyper-phosphorylated Rb</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="E2f_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:03:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q01094" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) free, active E2F</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Retinoblastoma_protein_E2f_complex_inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:03:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q01094" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q08999" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) Rb:E2F complexes (inactive)</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Emi1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:04:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9UKT4"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) free Emi1</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Cdh1_C_APC_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:04:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005680"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) free, active APC/C^Cdh1</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="C_Cdh1_APC_phosphorylated_inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005680" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) phosphorylated APC/C^Cdh1 (inactive)</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Emi1_C_Cdh1_complex_inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:05:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0005680" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9UKT4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) Emi1:APC/C^Cdh1 complexes (inactive) ; Emi1 is an APC_C_Cdh1 inhibitator </pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="P21" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:06:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38936" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) free p21</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="CyclinE_Cdk2_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:06:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24864" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24941" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) free, active CycE:Cdk2</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="CyclinA_Cdk2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:06:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P20248"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24941"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) free, active CycA:Cdk2</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="CyclinE_Cdk2_P21_complex_inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:06:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24864" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24941" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) CycE:Cdk2:p21 complexes (inactive)</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="CyclinA_Cdk2_P21_complex_inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:06:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P20248" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24941" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38936" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) CycA:Cdk2:p21 complexes (inactive)</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Pcna_nuclear_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:06:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P12004" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) active, nuclear PCNA</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PCNA_Nuclear_inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P12004" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) inactive, nuclear PCNA</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Pre_Replication_complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C28685" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) pre-replication complexes</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Pre_Replication_complex_primed" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000643" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C28685" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) primed replication complexes</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Pre_Replication_complex_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C28685" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) active replication complexes</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Pre_Replication_complex_inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C28685" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) inactive replication complexes</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Dna" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C449" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) DNA</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="P53" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04637" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) p53 transcription factor</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Dna_damage" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0001167" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:07:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C449" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) DNA damage</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Activity_probe_of_APC_C_Cdh1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:08:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) APC/C^Cdh1 activity probe</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Retinoblastoma_protein_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:11:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q08999" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) total Rb protein</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein_hyperphosphorylated],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein_E2f_complex_inactive],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="E2f_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:13:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q01094" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) total E2F protein</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[E2f_active],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein_E2f_complex_inactive],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Emi1_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:14:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9UKT4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) total Emi1 protein</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Emi1],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Emi1_C_Cdh1_complex_inactive],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="C_Cdh1_APC_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005680"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) total APC/C^Cdh1 protein ; APC/C^Cdh1 protein ubiquitin E3 ligase that is active
</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Cdh1_C_APC_active],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[C_Cdh1_APC_phosphorylated_inactive],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Emi1_C_Cdh1_complex_inactive],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="CyclinE_Cdk2_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:15:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24864" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24941" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) total CycE:Cdk2</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinE_Cdk2_active],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinE_Cdk2_P21_complex_inactive],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="CyclinA_Cdk2_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0032991" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:16:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P20248" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24941" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) total CycA:Cdk2</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinA_Cdk2],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinA_Cdk2_P21_complex_inactive],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="P21_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:16:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38936" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) total p21 protein</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[P21],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinE_Cdk2_P21_complex_inactive],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinA_Cdk2_P21_complex_inactive],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[PCNA_Nuclear_inactive],Reference=Concentration>+&lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Pre_Replication_complex_inactive],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Cd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:02:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) relative CycD:Cdk4/6 level</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Skp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:03:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(-) relative SCF^Skp2 level</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Cdt2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:04:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(-) relative CRL4^Cdt2 level</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kSyE2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:04:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) constitutive E2F synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="kSyE2fE2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:05:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) E2F-dependent E2F synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="jSyE2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) Michealis-Menten constant for E2F synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kAsRbE2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:06:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) association of Rb and E2F</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kDsRbE2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:07:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) dissociation of Rb:E2F complexes</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kDeE2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:07:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constiutive E2F degradation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kPhRbCd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:08:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) CycD:CDK4/6-mediated Rb phosphorylation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kPhRbCe" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:08:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) CycE:CDK2-mediated Rb phosphorylation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kPhRbCa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:08:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) CycA:Cdk2-mediated Rb phosphorylation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kDpRb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:09:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) dephosphorylation of Rb</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="kSyE1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:09:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive Emi1 synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kDeE1C1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:09:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) Cdh1-mediated Emi1 degradation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kDeE1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:10:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive Emi1 degradation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="kPhC1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:23:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive Cdh1 phosphorylation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="kPhC1Ce" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:24:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) CycE-mediated Cdh1 phosphorylation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kPhC1Ca" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:24:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) CycA-mediated Cdh1 phosphorylation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kDpC1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:25:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) Cdh1 dephosphorylation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kAsE1C1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:25:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) association of Emi1 and Cdh1</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="kDsE1C1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:26:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) dissociation of Emi1:Cdh1 complexes</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="kSyP21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:29:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) constitutive p21 synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="kSyP21P53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) p53-dependent synthesis of p21</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="kDeP21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:31:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive p21 degradation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="kDeP21Cy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:31:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) cyclin:CDK2-mediated p21 degradation (Skp2-dependent)</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="kDeP21aRc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:32:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) aRC-mediated p21 degradation (Cdt2-dependent)</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="kSyCe" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:32:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive CycE synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="kSyCa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:33:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive CycA synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="kAsCyP21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:33:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) association of cyclin:CDK2 and p21</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="kDsCyP21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:33:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) dissociation of cyclin:CDK2:p21 complexes</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="kDeCe" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:34:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive CycE degradation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kDeCa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:34:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive CycA degradation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="kDeCeCa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:34:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) CycA:CDK2-mediated CycE degradation (Skp2-dependent)</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kDeCaC1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:35:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) Cdh1-mediated CycA degradation</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="kImPc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:36:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) PCNA import into the nucleus</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="kExPc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:36:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) PCNA export from the nucleus</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kPhRc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:36:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) cyclin:CDK2-mediated phosphorylation/priming of RCs</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="kDpRc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:37:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) dephosphorylation of pRCs</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="jCy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:37:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) CDK2 threshold for the phosphorylation/priming of RCs</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:38:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(-) hill coefficient for the phosphorylation/priming of RCs</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kAsRcPc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:38:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) association of phosphorylated/primed RCs and PCNA</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kDsRcPc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:38:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) dissociation of pRC:PCNA complexes</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kAsPcP21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:38:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/(AU*min)) association of PCNA and p21</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kDsPcP21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:39:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) dissociation of PCNA:p21 complexes</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kSyDna" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:39:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) DNA synthesis by aRCs</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kSyP53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:40:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) constitutive p53 synthesis</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="kDeP53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:40:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) DNA damage-dependent degradation of p53</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="jP53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:40:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) inhibition constant of p53 degradation by DNA damage</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kGeDam" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:41:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) replication-independent DNA damage</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="kGeDamArc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:41:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) replication-dependent DNA damage</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="kReDam" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:41:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) p53-independent DNA damage repair</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kReDamP53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:42:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) p53-dependent DNA damage repair</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="jDam" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:42:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU) DNA damage threshold for repair</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="kSyPr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:42:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(AU/min) constitutive synthesis of Cdh1-activity probe</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kDePr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T12:43:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>(1/min) constitutive degradation of Cdh1-activity probe</pre>
  </body>
        </Comment>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Phosphorylation of Rb" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T14:41:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
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
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5074" name="Cd" value="0.65"/>
          <Constant key="Parameter_5076" name="kPhRbCa" value="0.3"/>
          <Constant key="Parameter_5077" name="kPhRbCd" value="0.2"/>
          <Constant key="Parameter_5071" name="kPhRbCe" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Phosphorylation Rb in Rb:E2F complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:01:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5073" name="Cd" value="0.65"/>
          <Constant key="Parameter_5072" name="kPhRbCa" value="0.3"/>
          <Constant key="Parameter_5075" name="kPhRbCd" value="0.2"/>
          <Constant key="Parameter_5078" name="kPhRbCe" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Dephosphorylation of Rb" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:05:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5069" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Synthesis of E2F" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5067" name="jSyE2f" value="0.2"/>
          <Constant key="Parameter_5066" name="kSyE2f" value="0.03"/>
          <Constant key="Parameter_5070" name="kSyE2fE2f" value="0.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Degradation of E2F" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:08:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5068" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Degradation of E2F in Rb:E2F complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5043" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Association/dissociation of Rb and E2F" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:09:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5041" name="k1" value="5"/>
          <Constant key="Parameter_5040" name="k2" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Synthesis of p21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:15:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="kSyP21" value="0.002"/>
          <Constant key="Parameter_5042" name="kSyP21P53" value="0.008"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Synthesis of CycE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:16:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5046" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Synthesis of CycA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:17:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5061" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Association/dissociation of CycE:Cdk2 and p21" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:19:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5049" name="k1" value="1"/>
          <Constant key="Parameter_5063" name="k2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Association/dissociation of CycA:Cdk2 and p21" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:20:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5064" name="k1" value="1"/>
          <Constant key="Parameter_5058" name="k2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Degradation of p21 in CycE:Cdk2:p21 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:33:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="Cdt2" value="1"/>
          <Constant key="Parameter_5053" name="Skp2" value="1"/>
          <Constant key="Parameter_5060" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_5047" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_5059" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Degradation of p21 in CycA:Cdk2:p21 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5052" name="Cdt2" value="1"/>
          <Constant key="Parameter_5056" name="Skp2" value="1"/>
          <Constant key="Parameter_5051" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_5055" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_5054" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Degradation of CycE in CycE:Cdk2 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:35:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5057" name="kDeCe" value="0.004"/>
          <Constant key="Parameter_5062" name="kDeCeCa" value="0.015"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Degradation of CycE in CycE:Cdk2:p21 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:36:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="kDeCe" value="0.004"/>
          <Constant key="Parameter_5050" name="kDeCeCa" value="0.015"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Degradation of CycA in CycA:Cdk2 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:37:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="kDeCa" value="0.01"/>
          <Constant key="Parameter_5079" name="kDeCaC1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Degradation of CycA in CycA:Cdk2:p21 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:37:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5080" name="kDeCa" value="0.01"/>
          <Constant key="Parameter_5086" name="kDeCaC1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Degradation of free p21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:40:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5085" name="Cdt2" value="1"/>
          <Constant key="Parameter_5087" name="Skp2" value="1"/>
          <Constant key="Parameter_5082" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_5081" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_5084" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Synthesis of Emi1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:45:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5083" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Degradation of Emi1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:46:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5088" name="k1" value="0.0005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Association/dissociation of Emi1:APC/C^Cdh1 complexes" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:47:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526" />
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
          <Constant key="Parameter_5092" name="k1" value="10"/>
          <Constant key="Parameter_5090" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Degradation of Emi1 in Emi1:APC/C^Cdh1 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:48:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5089" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Phosphorylation of free APC/C^Cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:50:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5093" name="kPhC1" value="0"/>
          <Constant key="Parameter_5091" name="kPhC1Ca" value="1"/>
          <Constant key="Parameter_5095" name="kPhC1Ce" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Phosphorylation of APC/C^Cdh1 in Emi1:APC/C^Cdh1 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:52:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5097" name="kPhC1" value="0"/>
          <Constant key="Parameter_5098" name="kPhC1Ca" value="1"/>
          <Constant key="Parameter_5094" name="kPhC1Ce" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Dephosphorylation of APC/C^Cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:53:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5096" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Nuclear import of active PCNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:11:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051170" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5101" name="v" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Nuclear export of active PCNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:12:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051168" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5102" name="k1" value="0.006"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Nuclear export of inactive PCNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:13:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051168" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5103" name="k1" value="0.006"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Association/dissociation of PCNA and p21" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:14:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5099" name="k1" value="100"/>
          <Constant key="Parameter_5100" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Degradation of p21 in PCNA:p21 complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:15:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5104" name="Cdt2" value="1"/>
          <Constant key="Parameter_5106" name="Skp2" value="1"/>
          <Constant key="Parameter_5105" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_5107" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_5108" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Association/dissociation of active PCNA and replication complexes" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:17:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5109" name="k1" value="0.01"/>
          <Constant key="Parameter_5110" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Association/dissociation of inactive PCNA and replication complexes" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:17:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5115" name="k1" value="0.01"/>
          <Constant key="Parameter_5118" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_14"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Phosphorylation/priming of replication complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:23:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5117" name="jCy" value="1.8"/>
          <Constant key="Parameter_5116" name="kPhRc" value="0.1"/>
          <Constant key="Parameter_5111" name="n" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Dephosphorylation of replication complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:24:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5113" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Association/dissociation of p21 and replication complexes" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:26:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000526" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5112" name="k1" value="100"/>
          <Constant key="Parameter_5123" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_17"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Degradation of p21 in inactive replication complexes" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:30:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5120" name="Cdt2" value="1"/>
          <Constant key="Parameter_5121" name="Skp2" value="1"/>
          <Constant key="Parameter_5122" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_5114" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_5119" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Dissassembly of RC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:33:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="Dissassembly of pRC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:34:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="Dissassembly of aRC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:34:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C52475" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="Dissassembly of iRC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T16:35:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C52475" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="Synthesis of DNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T09:35:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5125" name="k1" value="0.0093"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Synthesis of p53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T09:36:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5126" name="v" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Degradation of p53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T09:38:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5127" name="jP53" value="0.01"/>
          <Constant key="Parameter_5124" name="kDeP53" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="Induction of DNA damage" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T09:46:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16507" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5195" name="v" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="Induction of DNA damage by replication" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T09:46:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16507" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5129" name="k1" value="0.012"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Synthesis of APC/C^Cdh1 activity probe" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T09:48:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5152" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="Degradation of APC/C^Cdh1 activity probe" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T09:48:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5130" name="kDeCaC1" value="2"/>
          <Constant key="Parameter_5128" name="kDePr" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="Repair of DNA damage" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-02T11:00:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006281" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5189" name="jDam" value="0.5"/>
          <Constant key="Parameter_5190" name="kReDam" value="0.001"/>
          <Constant key="Parameter_5192" name="kReDamP53" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein_hyperphosphorylated]" value="3.0110704285000002e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[E2f_active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein_E2f_complex_inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Emi1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Cdh1_C_APC_active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[C_Cdh1_APC_phosphorylated_inactive]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Emi1_C_Cdh1_complex_inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[P21]" value="3.6132845142000003e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinE_Cdk2_active]" value="3.0110704285000001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinA_Cdk2]" value="7.2265690284000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinE_Cdk2_P21_complex_inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinA_Cdk2_P21_complex_inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Pcna_nuclear_active]" value="3.0110704285000001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[PCNA_Nuclear_inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Pre_Replication_complex]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Pre_Replication_complex_primed]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Pre_Replication_complex_active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Pre_Replication_complex_inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Dna]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[P53]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Dna_damage]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Activity_probe_of_APC_C_Cdh1]" value="3.0110704285000001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Retinoblastoma_protein_total]" value="3.0110704285000002e+21" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[E2f_total]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Emi1_total]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[C_Cdh1_APC_total]" value="6.0221408570000002e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinE_Cdk2_total]" value="3.0110704285000001e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinA_Cdk2_total]" value="7.2265690284000005e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[P21_total]" value="3.6132845142000003e+20" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cd]" value="0.65000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Skp2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cdt2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyE2f]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyE2fE2f]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jSyE2f]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsRbE2f]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsRbE2f]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeE2f]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCd]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCe]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCa]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDpRb]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyE1]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeE1C1]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeE1]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1Ce]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1Ca]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDpC1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsE1C1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsE1C1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyP21]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyP21P53]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21]" value="0.0025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21Cy]" value="0.0070000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21aRc]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyCe]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyCa]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsCyP21]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsCyP21]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCe]" value="0.0040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCa]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCeCa]" value="0.014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCaC1]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kImPc]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kExPc]" value="0.0060000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRc]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDpRc]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jCy]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[n]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsRcPc]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsRcPc]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsPcP21]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsPcP21]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyDna]" value="0.0092999999999999992" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyP53]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP53]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jP53]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kGeDam]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kGeDamArc]" value="0.012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kReDam]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kReDamP53]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jDam]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyPr]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDePr]" value="0.0001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of Rb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of Rb],ParameterGroup=Parameters,Parameter=Cd" value="0.65000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of Rb],ParameterGroup=Parameters,Parameter=kPhRbCa" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of Rb],ParameterGroup=Parameters,Parameter=kPhRbCd" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of Rb],ParameterGroup=Parameters,Parameter=kPhRbCe" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation Rb in Rb:E2F complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation Rb in Rb:E2F complexes],ParameterGroup=Parameters,Parameter=Cd" value="0.65000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation Rb in Rb:E2F complexes],ParameterGroup=Parameters,Parameter=kPhRbCa" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation Rb in Rb:E2F complexes],ParameterGroup=Parameters,Parameter=kPhRbCd" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation Rb in Rb:E2F complexes],ParameterGroup=Parameters,Parameter=kPhRbCe" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRbCe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dephosphorylation of Rb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dephosphorylation of Rb],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDpRb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of E2F]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of E2F],ParameterGroup=Parameters,Parameter=jSyE2f" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jSyE2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of E2F],ParameterGroup=Parameters,Parameter=kSyE2f" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyE2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of E2F],ParameterGroup=Parameters,Parameter=kSyE2fE2f" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyE2fE2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of E2F]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of E2F],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeE2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of E2F in Rb:E2F complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of E2F in Rb:E2F complexes],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeE2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of Rb and E2F]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of Rb and E2F],ParameterGroup=Parameters,Parameter=k1" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsRbE2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of Rb and E2F],ParameterGroup=Parameters,Parameter=k2" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsRbE2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of p21],ParameterGroup=Parameters,Parameter=kSyP21" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of p21],ParameterGroup=Parameters,Parameter=kSyP21P53" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyP21P53],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of CycE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of CycE],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyCe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of CycA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of CycA],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyCa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of CycE:Cdk2 and p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of CycE:Cdk2 and p21],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsCyP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of CycE:Cdk2 and p21],ParameterGroup=Parameters,Parameter=k2" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsCyP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of CycA:Cdk2 and p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of CycA:Cdk2 and p21],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsCyP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of CycA:Cdk2 and p21],ParameterGroup=Parameters,Parameter=k2" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsCyP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycE:Cdk2:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycE:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=Cdt2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cdt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycE:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=Skp2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Skp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycE:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycE:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21Cy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycE:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21aRc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycA:Cdk2:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycA:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=Cdt2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cdt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycA:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=Skp2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Skp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycA:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycA:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21Cy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in CycA:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21aRc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycE in CycE:Cdk2 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycE in CycE:Cdk2 complexes],ParameterGroup=Parameters,Parameter=kDeCe" value="0.0040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycE in CycE:Cdk2 complexes],ParameterGroup=Parameters,Parameter=kDeCeCa" value="0.014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCeCa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycE in CycE:Cdk2:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycE in CycE:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeCe" value="0.0040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycE in CycE:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeCeCa" value="0.014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCeCa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycA in CycA:Cdk2 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycA in CycA:Cdk2 complexes],ParameterGroup=Parameters,Parameter=kDeCa" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycA in CycA:Cdk2 complexes],ParameterGroup=Parameters,Parameter=kDeCaC1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCaC1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycA in CycA:Cdk2:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycA in CycA:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeCa" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of CycA in CycA:Cdk2:p21 complexes],ParameterGroup=Parameters,Parameter=kDeCaC1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCaC1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of free p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of free p21],ParameterGroup=Parameters,Parameter=Cdt2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cdt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of free p21],ParameterGroup=Parameters,Parameter=Skp2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Skp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of free p21],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of free p21],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21Cy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of free p21],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21aRc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of Emi1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of Emi1],ParameterGroup=Parameters,Parameter=k1" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyE1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of Emi1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of Emi1],ParameterGroup=Parameters,Parameter=k1" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeE1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of Emi1:APC/C^Cdh1 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of Emi1:APC/C^Cdh1 complexes],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsE1C1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of Emi1:APC/C^Cdh1 complexes],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsE1C1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of Emi1 in Emi1:APC/C^Cdh1 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of Emi1 in Emi1:APC/C^Cdh1 complexes],ParameterGroup=Parameters,Parameter=k1" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeE1C1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of free APC/C^Cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of free APC/C^Cdh1],ParameterGroup=Parameters,Parameter=kPhC1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of free APC/C^Cdh1],ParameterGroup=Parameters,Parameter=kPhC1Ca" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1Ca],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of free APC/C^Cdh1],ParameterGroup=Parameters,Parameter=kPhC1Ce" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1Ce],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of APC/C^Cdh1 in Emi1:APC/C^Cdh1 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of APC/C^Cdh1 in Emi1:APC/C^Cdh1 complexes],ParameterGroup=Parameters,Parameter=kPhC1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of APC/C^Cdh1 in Emi1:APC/C^Cdh1 complexes],ParameterGroup=Parameters,Parameter=kPhC1Ca" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1Ca],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation of APC/C^Cdh1 in Emi1:APC/C^Cdh1 complexes],ParameterGroup=Parameters,Parameter=kPhC1Ce" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhC1Ce],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dephosphorylation of APC/C^Cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dephosphorylation of APC/C^Cdh1],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDpC1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Nuclear import of active PCNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Nuclear import of active PCNA],ParameterGroup=Parameters,Parameter=v" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kImPc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Nuclear export of active PCNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Nuclear export of active PCNA],ParameterGroup=Parameters,Parameter=k1" value="0.0060000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kExPc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Nuclear export of inactive PCNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Nuclear export of inactive PCNA],ParameterGroup=Parameters,Parameter=k1" value="0.0060000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kExPc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of PCNA and p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of PCNA and p21],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsPcP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of PCNA and p21],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsPcP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=Cdt2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cdt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=Skp2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Skp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21Cy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21aRc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of active PCNA and replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of active PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsRcPc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of active PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsRcPc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of inactive PCNA and replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of inactive PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsRcPc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of inactive PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsRcPc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation/priming of replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation/priming of replication complexes],ParameterGroup=Parameters,Parameter=jCy" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jCy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation/priming of replication complexes],ParameterGroup=Parameters,Parameter=kPhRc" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kPhRc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Phosphorylation/priming of replication complexes],ParameterGroup=Parameters,Parameter=n" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dephosphorylation of replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dephosphorylation of replication complexes],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDpRc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of p21 and replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of p21 and replication complexes],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kAsPcP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Association/dissociation of p21 and replication complexes],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDsPcP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in inactive replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=Cdt2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Cdt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=Skp2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[Skp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21Cy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP21aRc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dissassembly of RC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dissassembly of pRC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dissassembly of aRC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Dissassembly of iRC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of DNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of DNA],ParameterGroup=Parameters,Parameter=k1" value="0.0092999999999999992" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyDna],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of p53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of p53],ParameterGroup=Parameters,Parameter=v" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyP53],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p53],ParameterGroup=Parameters,Parameter=jP53" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jP53],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of p53],ParameterGroup=Parameters,Parameter=kDeP53" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeP53],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Induction of DNA damage]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Induction of DNA damage],ParameterGroup=Parameters,Parameter=v" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kGeDam],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Induction of DNA damage by replication]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Induction of DNA damage by replication],ParameterGroup=Parameters,Parameter=k1" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kGeDamArc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of APC/C^Cdh1 activity probe]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Synthesis of APC/C^Cdh1 activity probe],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kSyPr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of APC/C^Cdh1 activity probe]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of APC/C^Cdh1 activity probe],ParameterGroup=Parameters,Parameter=kDeCaC1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDeCaC1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Degradation of APC/C^Cdh1 activity probe],ParameterGroup=Parameters,Parameter=kDePr" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kDePr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Repair of DNA damage]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Repair of DNA damage],ParameterGroup=Parameters,Parameter=jDam" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[jDam],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Repair of DNA damage],ParameterGroup=Parameters,Parameter=kReDam" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kReDam],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Reactions[Repair of DNA damage],ParameterGroup=Parameters,Parameter=kReDamP53" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Values[kReDamP53],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 3.6132845142000003e+20 3.0110704285000001e+20 0 0 0 3.0110704285000001e+20 7.2265690284000005e+20 0 0 0 0 0 6.0221408570000002e+20 0 3.0110704285000001e+20 0 0 6.0221408570000002e+20 0 0 0 3.0110704285000002e+21 0 3.0110704285000002e+21 0 0 6.0221408570000002e+20 3.0110704285000001e+20 7.2265690284000005e+20 3.6132845142000003e+20 1 0.65000000000000002 1 1 0.029999999999999999 0.040000000000000001 0.20000000000000001 5 0.0050000000000000001 0.050000000000000003 0.20000000000000001 0.29999999999999999 0.29999999999999999 0.050000000000000003 0.0050000000000000001 0.0050000000000000001 0.00050000000000000001 0 0.01 1 0.050000000000000003 10 0.01 0.002 0.0080000000000000002 0.0025000000000000001 0.0070000000000000001 1 0.01 0.02 1 0.050000000000000003 0.0040000000000000001 0.01 0.014999999999999999 2 0.0030000000000000001 0.0060000000000000001 0.10000000000000001 0.050000000000000003 1.8 6 0.01 0.001 100 0.01 0.0092999999999999992 0.050000000000000003 0.050000000000000003 0.01 0.001 0.012 0.001 0.0050000000000000001 0.5 0.01 0.0001 
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Figure 1Bi" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CyclinA_Cdk2_total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinA_Cdk2_total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CyclinE_Cdk2_total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[CyclinE_Cdk2_total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P21_total]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[P21_total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pre_Replication_complex_active]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Pre_Replication_complex_active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 1Bii" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Cdh1_C_APC_active]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Cdh1_C_APC_active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Emi1_total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heldt2018 - Proliferation-quiescence decision pormoted by p21 in response to DNA damage,Vector=Compartments[cell],Vector=Metabolites[Emi1_total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1703030000_FINAL.xml">
    <SBMLMap SBMLid="Association_dissociation_of_CycA_Cdk2_and_p21" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Association_dissociation_of_CycE_Cdk2_and_p21" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Association_dissociation_of_Emi1_APC_C_Cdh1_complexes" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Association_dissociation_of_PCNA_and_p21" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Association_dissociation_of_Rb_and_E2F" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Association_dissociation_of_active_PCNA_and_replication_complexes" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Association_dissociation_of_inactive_PCNA_and_replication_complexes" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Association_dissociation_of_p21_and_replication_complexes" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="C1" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Ca" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="CaP21" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Cd" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Cdt2" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Ce" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="CeP21" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Dam" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Degradation_of_APC_C_Cdh1_activity_probe" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="Degradation_of_CycA_in_CycA_Cdk2_complexes" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Degradation_of_CycA_in_CycA_Cdk2_p21_complexes" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Degradation_of_CycE_in_CycE_Cdk2_complexes" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Degradation_of_CycE_in_CycE_Cdk2_p21_complexes" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Degradation_of_E2F" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Degradation_of_E2F_in_Rb_E2F_complexes" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Degradation_of_Emi1" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Degradation_of_Emi1_in_Emi1_APC_C_Cdh1_complexes" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Degradation_of_free_p21" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Degradation_of_p21_in_CycA_Cdk2_p21_complexes" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="Degradation_of_p21_in_CycE_Cdk2_p21_complexes" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Degradation_of_p21_in_PCNA_p21_complexes" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Degradation_of_p21_in_inactive_replication_complexes" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Degradation_of_p53" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="Dephosphorylation_of_APC_C_Cdh1" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Rb" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Dephosphorylation_of_replication_complexes" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Dissassembly_of_RC" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Dissassembly_of_aRC" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="Dissassembly_of_iRC" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="Dissassembly_of_pRC" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="Dna" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="E1" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="E1C1" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="E2f" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Induction_of_DNA_damage" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="Induction_of_DNA_damage_by_replication" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="Nuclear_export_of_active_PCNA" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Nuclear_export_of_inactive_PCNA" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Nuclear_import_of_active_PCNA" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="P21" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="P53" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Phosphorylation_Rb_in_Rb_E2F_complexes" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Phosphorylation_of_APC_C_Cdh1_in_Emi1_APC_C_Cdh1_complexes" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Phosphorylation_of_Rb" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Phosphorylation_of_free_APC_C_Cdh1" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Phosphorylation_priming_of_replication_complexes" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Pr" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Rb" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="RbE2f" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Rc" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Repair_of_DNA_damage" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="Skp2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Synthesis_of_APC_C_Cdh1_activity_probe" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="Synthesis_of_CycA" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Synthesis_of_CycE" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Synthesis_of_DNA" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="Synthesis_of_E2F" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Synthesis_of_Emi1" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Synthesis_of_p21" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Synthesis_of_p53" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="aPcna" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="aRc" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="iPcna" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="iRc" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="jCy" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="jDam" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="jP53" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="jSyE2f" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kAsCyP21" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="kAsE1C1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="kAsPcP21" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="kAsRbE2f" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kAsRcPc" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="kDeCa" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kDeCaC1" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="kDeCe" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="kDeCeCa" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="kDeE1" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kDeE1C1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kDeE2f" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="kDeP21" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="kDeP21Cy" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="kDeP21aRc" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="kDeP53" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="kDePr" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kDpC1" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="kDpRb" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kDpRc" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kDsCyP21" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="kDsE1C1" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="kDsPcP21" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kDsRbE2f" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="kDsRcPc" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kExPc" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="kGeDam" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="kGeDamArc" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="kImPc" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="kPhC1" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="kPhC1Ca" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kPhC1Ce" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="kPhRbCa" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kPhRbCd" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kPhRbCe" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kPhRc" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kReDam" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="kReDamP53" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kSyCa" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="kSyCe" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="kSyDna" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kSyE1" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kSyE2f" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kSyE2fE2f" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="kSyP21" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="kSyP21P53" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="kSyP53" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kSyPr" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="pC1" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="pRb" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="pRc" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="rDeCa_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="rDeCa_2" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="rDeCe_1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="rDeCe_2" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="rDeP21_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="rDeP21_2" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="rDeP21_3" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="rDeP21_4" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="rDeP21_5" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="rDeP53_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="rDePr_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="rDsRc_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="rDsRc_2" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="rDsRc_3" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="rDsRc_4" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="rPhC1_1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="rPhC1_2" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="rPhRb_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="rPhRb_2" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="rPhRc_1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="rReDam_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="rSyE2f_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="rSyP21_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="tC1" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="tCa" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="tCe" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="tE1" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="tE2f" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="tP21" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="tRb" COPASIkey="Metabolite_23"/>
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
    <UnitDefinition key="Unit_32" name="minute" symbol="min">
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
