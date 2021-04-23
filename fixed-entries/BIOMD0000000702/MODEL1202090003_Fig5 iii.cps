<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-05-21 14:40:35 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="23" versionDevel="184" copasiSourcesModified="0">
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
    <Function key="Function_40" name="Function for R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4" type="UserDefined" reversible="false">
      <Expression>
        u*kfKin4Cyto*Bfa1_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Bfa1_Tem1GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="kfKin4Cyto" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <Expression>
        alpha*konB5T*Bfa1P5*Tem1GDP-koffBT*Bfa1P5_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="Bfa1P5_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_261" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-30T10:49:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*krCdc5*Bfa1P5_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="Bfa1P5_Tem1GDP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="krCdc5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <Expression>
        alpha*konB4T*Bfa1P4*Tem1GDP-koffBT*Bfa1P4_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_270" name="Bfa1P4_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-03T15:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*konB5T*Bfa1P5*Tem1GTP-koffBT*Bfa1P5_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_282" name="Bfa1P5_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_281" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB4*SPB_B*Bfa1P4_Tem1GDP-koffB4*B_Bfa1P4_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="B_Bfa1P4_Tem1GDP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_288" name="Bfa1P4_Tem1GDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_285" name="koffB4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="konB4" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for R1: Rev. SPB-association of Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-03T15:52:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB*SPB_B*Bfa1-koffB*B_Bfa1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="B_Bfa1" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_294" name="Bfa1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_291" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB*SPB_B*Bfa1P5-koffB*B_Bfa1P5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="B_Bfa1P5" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_300" name="Bfa1P5" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_297" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for R4: Rev. SPB-association of Bfa1-Tem1GTP complex" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB*SPB_B*Bfa1_Tem1GTP-koffB*B_Bfa1_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="B_Bfa1_Tem1GTP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_306" name="Bfa1_Tem1GTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_303" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB4*Bfa1P4_Tem1GTP*SPB_B-koffB4*B_Bfa1P4_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="B_Bfa1P4_Tem1GTP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_312" name="Bfa1P4_Tem1GTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_309" name="koffB4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="konB4" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for R7: Rev. SPB-association of Bfa1-Tem1GDP complex" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB*SPB_B*Bfa1_Tem1GDP-koffB*B_Bfa1_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="B_Bfa1_Tem1GDP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_318" name="Bfa1_Tem1GDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_317" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_315" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB*SPB_B*Bfa1P5_Tem1GTP-koffB*B_Bfa1P5_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="B_Bfa1P5_Tem1GTP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_324" name="Bfa1P5_Tem1GTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_321" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R2: Rev. SPB-association of Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB4*SPB_B*Bfa1P4-koffB4*B_Bfa1P4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="B_Bfa1P4" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_330" name="Bfa1P4" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_327" name="koffB4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="konB4" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-03T15:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*konB4T*Bfa1P4*Tem1GTP-koffBT*Bfa1P4_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_336" name="Bfa1P4_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_335" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for R19: Rev. association of Tem1GDP with Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-03T15:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*konBT*Bfa1*Tem1GDP-koffBT*Bfa1_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="Bfa1_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_341" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB4T*B_Bfa1P4*Tem1GTP-koffBT*B_Bfa1P4_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_349" name="B_Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="B_Bfa1P4_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_347" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_346" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_345" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-30T10:48:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB5T*B_Bfa1P5*Tem1GTP-koffBT*B_Bfa1P5_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="B_Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_354" name="B_Bfa1P5_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_353" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_351" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R13: Rev. association of Tem1GDP with SPB-bound Bfa1" type="UserDefined" reversible="true">
      <Expression>
        c3*(konBT*B_Bfa1*Tem1GDP-koffBT*B_Bfa1_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="B_Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="B_Bfa1_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_359" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_357" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB4T*B_Bfa1P4*Tem1GDP-koffBT*B_Bfa1P4_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="B_Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="B_Bfa1P4_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_365" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_364" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_363" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R22: Rev. SPB-association of Tem1GTP" type="UserDefined" reversible="true">
      <Expression>
        c3*(konT*SPB_T*Tem1GTP-koffT*T_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="SPB_T" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="T_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_371" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_370" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_369" name="koffT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="konT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R23: Rev. SPB-association of Tem1GDP" type="UserDefined" reversible="true">
      <Expression>
        c3*(konT*SPB_T*Tem1GDP-koffT*T_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_379" name="SPB_T" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_378" name="T_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_377" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_375" name="koffT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="konT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R24: Phosphorylation of SPB-bound Bfa1 by Kin4" type="UserDefined" reversible="false">
      <Expression>
        u*kfKin4*B_Bfa1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="B_Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_384" name="kfKin4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4" type="UserDefined" reversible="false">
      <Expression>
        u*kfKin4*B_Bfa1_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="B_Bfa1_Tem1GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_381" name="kfKin4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4" type="UserDefined" reversible="false">
      <Expression>
        u*kfKin4*B_Bfa1_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_388" name="B_Bfa1_Tem1GDP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="kfKin4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for R30: Phosphorylation of Bfa1 by cytosolic Kin4" type="UserDefined" reversible="false">
      <Expression>
        u*kfKin4Cyto*Bfa1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="kfKin4Cyto" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" type="UserDefined" reversible="false">
      <Expression>
        u*krCdc5*Bfa1P5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="krCdc5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" type="UserDefined" reversible="false">
      <Expression>
        u*krCdc5*Bfa1P5_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="Bfa1P5_Tem1GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="krCdc5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex" type="UserDefined" reversible="true">
      <Expression>
        c3*(konB*SPB_B*Bfa1P5_Tem1GDP-koffB*B_Bfa1P5_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_400" name="B_Bfa1P5_Tem1GDP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_399" name="Bfa1P5_Tem1GDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_401" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_402" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for R10: Rev. association of Tem1GTP with SPB-bound Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-30T10:48:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konBT*B_Bfa1*Tem1GTP-koffBT*B_Bfa1_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="B_Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="B_Bfa1_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_407" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_406" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_405" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4" type="UserDefined" reversible="false">
      <Expression>
        u*kfKin4Cyto*Bfa1_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_415" name="Bfa1_Tem1GDP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="kfKin4Cyto" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for R16: Rev. association of Tem1GTP with Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-03T15:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*konBT*Bfa1*Tem1GTP-koffBT*Bfa1_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="Bfa1_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_412" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_416" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-03T15:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB5T*B_Bfa1P5*Tem1GDP-koffBT*B_Bfa1P5_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="B_Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="B_Bfa1P5_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_422" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_421" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_420" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051726"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0007052"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0031578"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/4932"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/doi/doi:10.1038/msb.2012.15"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-09T13:51:46Z</dcterms:W3CDTF>
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
        <dcterms:W3CDTF>2012-05-10T13:48:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1202090001"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This model is from the article:      <br/>
    <strong>A dynamical model of the spindle position checkpoint</strong>
    <br/>
          Ayse Koca Caydasi, Maiko Lohel, Gerd Grünert, Peter Dittrich, Gislene Pereira &amp;amp;amp;amp;amp; Bashar Ibrahim      <em>Molecular Systems Biology</em>
          2012; 582      <a href="http://www.ncbi.nlm.nih.gov/pubmed/PMEDID">PMEDID</a>
          ,
      doi:      <a href="http://dx.doi.org/10.1038/msb.2012.15">10.1038/msb.2012.15</a>
    <br/>
    <strong>Abstract:</strong>
    <br/>
          The orientation of the mitotic spindle with respect to the polarity axis is crucial for the accuracy of asymmetric cell division. In budding yeast, a surveillance mechanism called the spindle position checkpoint (SPOC) prevents exit from mitosis when the mitotic spindle fails to align along the mother-to-daughter polarity axis. SPOC arrest relies upon inhibition of the GTPase Tem1 by the GTPase-activating protein (GAP) complex Bfa1–Bub2. Importantly, reactions signaling mitotic exit take place at yeast centrosomes (named spindle pole bodies, SPBs) and the GAP complex also promotes SPB localization of Tem1. Yet, whether the regulation of Tem1 by Bfa1–Bub2 takes place only at the SPBs remains elusive. Here, we present a quantitative analysis of Bfa1–Bub2 and Tem1 localization at the SPBs. Based on the measured SPB-bound protein levels, we introduce a dynamical model of the SPOC that describes the regulation of Bfa1 and Tem1. Our model suggests that Bfa1 interacts with Tem1 in the cytoplasm as well as at the SPBs to provide efficient Tem1 inhibition.      </p>
    <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p>
    <p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a></p>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_3" name="Cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61554"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="SPB" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13365"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_64" name="B" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="T" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="Bfa1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="Bfa1P4" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="Bfa1P5" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002221"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="Tem1GTP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="Tem1GDP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="B-Bfa1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="B-Bfa1P4" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="B-Bfa1P5" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="T-Tem1GTP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="T-Tem1GDP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="B-Bfa1-Tem1GTP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="B-Bfa1P4-Tem1GTP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="B-Bfa1P5-Tem1GTP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="B-Bfa1-Tem1GDP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="B-Bfa1P4-Tem1GDP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="B-Bfa1P5-Tem1GDP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000494"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="Bfa1-Tem1GTP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="Bfa1P4-Tem1GTP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="Bfa1P5-Tem1GTP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002221"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15996"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Bfa1-Tem1GDP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="Bfa1P4-Tem1GDP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="Bfa1P5-Tem1GDP" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002221"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17552"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="Active Bfa1 at the SPB" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002354"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GDP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="Active Bfa1 at the Cytosol" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002354"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GDP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Active Tem1 at the SPB" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002354"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GTP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Active Tem1 in the Cytosol" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002354"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GTP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="Inactive Bfa1 at the SPB" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002355"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          ((1-&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>)*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GDP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="Inactive Bfa1 in the cytosol" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002355"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          ((1-&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>)*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GTP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="Inactive Tem1 at the SPB" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002355"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Inactive Tem1 in the cytosol" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002355"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="Total Bfa1 at the SPB" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Bfa1 at the SPB],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Bfa1 at the SPB],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="Total Bfa1 in the Cytosol" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47113"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Bfa1 at the Cytosol],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Bfa1 in the cytosol],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Total Tem1 at the SPB" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Tem1 at the SPB],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Tem1 at the SPB],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Total Tem1 in the Cytosol" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38987"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Tem1 in the Cytosol],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Tem1 in the cytosol],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_45" name="konB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="koffB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="konB4" simulationType="fixed" addNoise="false">
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="koffB4" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="konBT" simulationType="fixed" addNoise="false">
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="konB4T" simulationType="fixed" addNoise="false">
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="konB5T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-09T13:34:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="koffBT" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="konT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="koffT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="kfKin4" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kfKin4Cyto" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="krKin4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kfCdc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="krCdc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="khyd" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="knex" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="khydBT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="khydB4T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T09:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="u" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T11:07:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-30T09:38:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="q" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-09T09:03:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="avogadro" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_95" name="R1: Rev. SPB-association of Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5224" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5223" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="R2: Rev. SPB-association of Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5234" name="koffB4" value="0.0365"/>
          <Constant key="Parameter_5237" name="konB4" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5245" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5232" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="R4: Rev. SPB-association of Bfa1-Tem1GTP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5233" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5235" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5229" name="koffB4" value="0.0365"/>
          <Constant key="Parameter_5231" name="konB4" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5227" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5226" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="R7: Rev. SPB-association of Bfa1-Tem1GDP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5228" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5230" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5215" name="koffB4" value="0.0365"/>
          <Constant key="Parameter_5210" name="konB4" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5225" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5222" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="R10: Rev. association of Tem1GTP with SPB-bound Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5220" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5218" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5217" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5221" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5211" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5216" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="R13: Rev. association of Tem1GDP with SPB-bound Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5213" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5212" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5214" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5219" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5186" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5164" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="R16: Rev. association of Tem1GTP with Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5208" name="alpha" value="1"/>
          <Constant key="Parameter_5209" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5207" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5203" name="alpha" value="1"/>
          <Constant key="Parameter_5205" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5204" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5201" name="alpha" value="1"/>
          <Constant key="Parameter_5206" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5175" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="R19: Rev. association of Tem1GDP with Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5191" name="alpha" value="1"/>
          <Constant key="Parameter_5188" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5202" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5180" name="alpha" value="1"/>
          <Constant key="Parameter_5189" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5192" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5163" name="alpha" value="1"/>
          <Constant key="Parameter_5166" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5183" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="R22: Rev. SPB-association of Tem1GTP" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5190" name="koffT" value="0.183"/>
          <Constant key="Parameter_5162" name="konT" value="1.9e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="R23: Rev. SPB-association of Tem1GDP" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5165" name="koffT" value="0.183"/>
          <Constant key="Parameter_5200" name="konT" value="1.9e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="R24: Phosphorylation of SPB-bound Bfa1 by Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5194" name="kfKin4" value="1000"/>
          <Constant key="Parameter_5167" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5168" name="kfKin4" value="1000"/>
          <Constant key="Parameter_5171" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7506" name="kfKin4" value="1000"/>
          <Constant key="Parameter_7464" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="R27: Phosphorylation of SPB-bound Bfa1 by Cdc5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5159" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="R28: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Cdc5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5157" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="R29: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Cdc5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7462" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="R47: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7465" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="R46: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7458" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="R48: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7422" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="R30: Phosphorylation of Bfa1 by cytosolic Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5154" name="kfKin4Cyto" value="0.09"/>
          <Constant key="Parameter_7469" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="R33: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006470"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7420" name="k1" value="0.0251"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006470"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7468" name="krCdc5" value="0.01"/>
          <Constant key="Parameter_7463" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="R40: GDP- for GTP nucleotide exchange" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7421" name="k1" value="0.0136"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="R39: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7515" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="R42: GDP- for GTP nucleotide exchange" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005488"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4744" name="k1" value="0.0136"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="R41: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7497" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="R44: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4753" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="R43: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4776" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="R45: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16702"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7425" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="R34: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006470"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7247" name="k1" value="0.0251"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006470"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7418" name="krCdc5" value="0.01"/>
          <Constant key="Parameter_7477" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7466" name="kfKin4Cyto" value="0.09"/>
          <Constant key="Parameter_7480" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="R35: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006470"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7514" name="k1" value="0.0251"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006470"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7346" name="krCdc5" value="0.01"/>
          <Constant key="Parameter_7246" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006468"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7347" name="kfKin4Cyto" value="0.09"/>
          <Constant key="Parameter_7476" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_1" name="SPOC deactivation upon correct spindle alignment" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time> ge 1800
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_26">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]" value="1e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]" value="2.9999999999999998e-18" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B]" value="150.49330001643006" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T]" value="299.90261467859995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1]" value="1222.4945939710001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GTP]" value="2956.8711607870005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GDP]" value="481.16905447430003" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1]" value="150.49330001643006" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GTP]" value="9.0332112854999984" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Bfa1 at the SPB]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Bfa1 at the Cytosol]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Tem1 at the SPB]" value="16319782.968203366" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Tem1 in the Cytosol]" value="178066965275285.69" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Bfa1 at the SPB]" value="288207367.21847153" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Bfa1 in the cytosol]" value="73620354278784.109" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Tem1 at the SPB]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Tem1 in the cytosol]" value="28976681314654.434" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Total Bfa1 at the SPB]" value="288207367.21847153" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Total Bfa1 in the Cytosol]" value="73620354278784.109" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Total Tem1 at the SPB]" value="16319782.968203366" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Total Tem1 in the Cytosol]" value="207043646589940.12" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB]" value="1250000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB]" value="0.0011999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4]" value="20000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB4]" value="0.036499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konBT]" value="36500000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4T]" value="36500000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB5T]" value="7000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT]" value="0.183" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konT]" value="1900000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffT]" value="0.183" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4Cyto]" value="0.089999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krKin4]" value="0.025100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfCdc5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krCdc5]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khyd]" value="0.0022399999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[knex]" value="0.013599999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khydBT]" value="0.0022399999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khydB4T]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[alpha]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro]" value="6.0221415000000003e+23" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R1: Rev. SPB-association of Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R1: Rev. SPB-association of Bfa1],ParameterGroup=Parameters,Parameter=koffB" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R1: Rev. SPB-association of Bfa1],ParameterGroup=Parameters,Parameter=konB" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R2: Rev. SPB-association of Kin4-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R2: Rev. SPB-association of Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffB4" value="0.036499999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R2: Rev. SPB-association of Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB4" value="20000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffB" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R4: Rev. SPB-association of Bfa1-Tem1GTP complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R4: Rev. SPB-association of Bfa1-Tem1GTP complex],ParameterGroup=Parameters,Parameter=koffB" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R4: Rev. SPB-association of Bfa1-Tem1GTP complex],ParameterGroup=Parameters,Parameter=konB" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex],ParameterGroup=Parameters,Parameter=koffB4" value="0.036499999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex],ParameterGroup=Parameters,Parameter=konB4" value="20000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex],ParameterGroup=Parameters,Parameter=koffB" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex],ParameterGroup=Parameters,Parameter=konB" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R7: Rev. SPB-association of Bfa1-Tem1GDP complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R7: Rev. SPB-association of Bfa1-Tem1GDP complex],ParameterGroup=Parameters,Parameter=koffB" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R7: Rev. SPB-association of Bfa1-Tem1GDP complex],ParameterGroup=Parameters,Parameter=konB" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex],ParameterGroup=Parameters,Parameter=koffB4" value="0.036499999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex],ParameterGroup=Parameters,Parameter=konB4" value="20000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex],ParameterGroup=Parameters,Parameter=koffB" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex],ParameterGroup=Parameters,Parameter=konB" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R10: Rev. association of Tem1GTP with SPB-bound Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R10: Rev. association of Tem1GTP with SPB-bound Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R10: Rev. association of Tem1GTP with SPB-bound Bfa1],ParameterGroup=Parameters,Parameter=konBT" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB4T" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB5T" value="7000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB5T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R13: Rev. association of Tem1GDP with SPB-bound Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R13: Rev. association of Tem1GDP with SPB-bound Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R13: Rev. association of Tem1GDP with SPB-bound Bfa1],ParameterGroup=Parameters,Parameter=konBT" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB4T" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB5T" value="7000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB5T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R16: Rev. association of Tem1GTP with Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R16: Rev. association of Tem1GTP with Bfa1],ParameterGroup=Parameters,Parameter=alpha" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R16: Rev. association of Tem1GTP with Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R16: Rev. association of Tem1GTP with Bfa1],ParameterGroup=Parameters,Parameter=konBT" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=alpha" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB4T" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=alpha" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB5T" value="7000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB5T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R19: Rev. association of Tem1GDP with Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R19: Rev. association of Tem1GDP with Bfa1],ParameterGroup=Parameters,Parameter=alpha" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R19: Rev. association of Tem1GDP with Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R19: Rev. association of Tem1GDP with Bfa1],ParameterGroup=Parameters,Parameter=konBT" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=alpha" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB4T" value="36500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB4T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=alpha" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=koffBT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1],ParameterGroup=Parameters,Parameter=konB5T" value="7000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konB5T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R22: Rev. SPB-association of Tem1GTP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R22: Rev. SPB-association of Tem1GTP],ParameterGroup=Parameters,Parameter=koffT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R22: Rev. SPB-association of Tem1GTP],ParameterGroup=Parameters,Parameter=konT" value="1900000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R23: Rev. SPB-association of Tem1GDP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R23: Rev. SPB-association of Tem1GDP],ParameterGroup=Parameters,Parameter=koffT" value="0.183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[koffT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R23: Rev. SPB-association of Tem1GDP],ParameterGroup=Parameters,Parameter=konT" value="1900000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[konT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R24: Phosphorylation of SPB-bound Bfa1 by Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R24: Phosphorylation of SPB-bound Bfa1 by Kin4],ParameterGroup=Parameters,Parameter=kfKin4" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R24: Phosphorylation of SPB-bound Bfa1 by Kin4],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4],ParameterGroup=Parameters,Parameter=kfKin4" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4],ParameterGroup=Parameters,Parameter=kfKin4" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R27: Phosphorylation of SPB-bound Bfa1 by Cdc5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R27: Phosphorylation of SPB-bound Bfa1 by Cdc5],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfCdc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R28: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Cdc5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R28: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Cdc5],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfCdc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R29: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Cdc5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R29: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Cdc5],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfCdc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R47: GAP-accelerated GTP-hydrolysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R47: GAP-accelerated GTP-hydrolysis],ParameterGroup=Parameters,Parameter=k1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khydB4T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R46: GAP-accelerated GTP-hydrolysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R46: GAP-accelerated GTP-hydrolysis],ParameterGroup=Parameters,Parameter=k1" value="0.0022399999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khydBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R48: GTP-hydrolysis with intrinisc GTPase activity]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R48: GTP-hydrolysis with intrinisc GTPase activity],ParameterGroup=Parameters,Parameter=k1" value="0.0022399999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khyd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R30: Phosphorylation of Bfa1 by cytosolic Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R30: Phosphorylation of Bfa1 by cytosolic Kin4],ParameterGroup=Parameters,Parameter=kfKin4Cyto" value="0.089999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4Cyto],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R30: Phosphorylation of Bfa1 by cytosolic Kin4],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R33: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R33: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4],ParameterGroup=Parameters,Parameter=k1" value="0.025100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krKin4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A],ParameterGroup=Parameters,Parameter=krCdc5" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krCdc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R40: GDP- for GTP nucleotide exchange]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R40: GDP- for GTP nucleotide exchange],ParameterGroup=Parameters,Parameter=k1" value="0.013599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[knex],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R39: GTP-hydrolysis with intrinisc GTPase activity]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R39: GTP-hydrolysis with intrinisc GTPase activity],ParameterGroup=Parameters,Parameter=k1" value="0.0022399999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khyd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R42: GDP- for GTP nucleotide exchange]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R42: GDP- for GTP nucleotide exchange],ParameterGroup=Parameters,Parameter=k1" value="0.013599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[knex],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R41: GTP-hydrolysis with intrinisc GTPase activity]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R41: GTP-hydrolysis with intrinisc GTPase activity],ParameterGroup=Parameters,Parameter=k1" value="0.0022399999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khyd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R44: GAP-accelerated GTP-hydrolysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R44: GAP-accelerated GTP-hydrolysis],ParameterGroup=Parameters,Parameter=k1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khydB4T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R43: GAP-accelerated GTP-hydrolysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R43: GAP-accelerated GTP-hydrolysis],ParameterGroup=Parameters,Parameter=k1" value="0.0022399999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khydBT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R45: GTP-hydrolysis with intrinisc GTPase activity]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R45: GTP-hydrolysis with intrinisc GTPase activity],ParameterGroup=Parameters,Parameter=k1" value="0.0022399999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[khyd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R34: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R34: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4],ParameterGroup=Parameters,Parameter=k1" value="0.025100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krKin4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A],ParameterGroup=Parameters,Parameter=krCdc5" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krCdc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4],ParameterGroup=Parameters,Parameter=kfKin4Cyto" value="0.089999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4Cyto],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R35: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R35: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4],ParameterGroup=Parameters,Parameter=k1" value="0.025100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krKin4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A],ParameterGroup=Parameters,Parameter=krCdc5" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[krCdc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4],ParameterGroup=Parameters,Parameter=kfKin4Cyto" value="0.089999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[kfKin4Cyto],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Reactions[R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4],ParameterGroup=Parameters,Parameter=u" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2956.8711607870005 150.49330001643006 481.16905447430003 0 0 1222.4945939710001 0 0 150.49330001643006 0 0 0 0 0 0 0 0 0 299.90261467859995 0 0 9.0332112854999984 0 0 0 178066965275285.69 73620354278784.109 28976681314654.434 73620354278784.109 207043646589940.12 0 16319782.968203366 288207367.21847153 0 288207367.21847153 16319782.968203366 1e-13 2.9999999999999998e-18 1250000 0.0011999999999999999 20000 0.036499999999999998 36500000 36500000 7000000 0.183 1900000 0.183 1000 0.089999999999999997 0.025100000000000001 1 0.01 0.0022399999999999998 0.013599999999999999 0.0022399999999999998 2 1 1 0 6.0221415000000003e+23 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="true" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="360"/>
        <Parameter name="StepSize" type="float" value="10"/>
        <Parameter name="Duration" type="float" value="3600"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
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
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
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
    <PlotSpecification name="Fig 5iii Tem1 Cytosol" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Tem1 in the Cytosol]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Tem1 in the Cytosol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Tem1 in the Cytosol]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Total Tem1 in the Cytosol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5iii Bfa1 Cytosol" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Bfa1 at the Cytosol]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Bfa1 at the Cytosol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Bfa1 in the Cytosol]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Total Bfa1 in the Cytosol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5iii Bfa1 SPB" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Bfa1 at the SPB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Bfa1 at the SPB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Bfa1 at the SPB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Total Bfa1 at the SPB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5iii Tem1 SPB" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Tem1 at the SPB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Tem1 at the SPB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Tem1 at the SPB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Total Tem1 at the SPB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="model.xml">
    <SBMLMap SBMLid="Active_Bfa1_at_the_Cytosol" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="Active_Bfa1_at_the_SPB" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="Active_Tem1_at_the_SPB" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="Active_Tem1_in_the_Cytosol" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="B_Bfa1" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="B_Bfa1P4" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="B_Bfa1P4_Tem1GDP" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="B_Bfa1P4_Tem1GTP" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="B_Bfa1P5" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="B_Bfa1P5_Tem1GDP" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="B_Bfa1P5_Tem1GTP" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="B_Bfa1_Tem1GDP" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="B_Bfa1_Tem1GTP" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="Bfa1" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="Bfa1P4" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="Bfa1P4_Tem1GDP" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="Bfa1P4_Tem1GTP" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="Bfa1P5" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="Bfa1P5_Tem1GDP" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="Bfa1P5_Tem1GTP" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="Bfa1_Tem1GDP" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Bfa1_Tem1GTP" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="Inactive_Bfa1_at_the_SPB" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="Inactive_Bfa1_in_the_cytosol" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Inactive_Tem1_at_the_SPB" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="Inactive_Tem1_in_the_cytosol" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="R1" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="R10" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="R11" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="R12" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="R13" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="R14" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="R15" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="R16" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="R17" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="R18" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="R19" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="R2" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="R20" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="R21" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="R22" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="R23" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="R24" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="R25" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="R26" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="R27" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="R28" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="R29" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="R3" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="R30" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="R31" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="R32" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="R33" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="R34" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="R35" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="R36" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="R37" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="R38" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="R39" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="R4" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="R40" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="R41" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="R42" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="R43" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="R44" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="R45" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="R46" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="R47" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="R48" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="R5" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="R6" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="R7" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="R8" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="R9" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="SPB_B" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="SPB_T" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="SPOC_deactivation_upon_correct_spindle_alignment_0" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="T_Tem1GDP" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="T_Tem1GTP" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="Tem1GDP" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="Tem1GTP" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="Total_Bfa1_at_the_SPB" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="Total_Bfa1_in_the_Cytosol" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="Total_Tem1_at_the_SPB" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="Total_Tem1_in_the_Cytosol" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="avogadro" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="c2" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="c3" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="kfCdc5" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kfKin4" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="kfKin4Cyto" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="khyd" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="khydB4T" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="khydBT" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="knex" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="koffB" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="koffB4" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="koffBT" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="koffT" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="konB" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="konB4" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="konB4T" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="konB5T" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="konBT" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="konT" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="krCdc5" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="krKin4" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="q" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="u" COPASIkey="ModelValue_26"/>
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
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
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
