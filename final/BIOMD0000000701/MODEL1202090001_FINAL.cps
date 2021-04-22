<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-07-14T11:41:35Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
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
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for R1: Rev. SPB-association of Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
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
        <ParameterDescription key="FunctionParameter_264" name="B_Bfa1" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_263" name="Bfa1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_250" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for R2: Rev. SPB-association of Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB4*SPB_B*Bfa1P4-koffB4*B_Bfa1P4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="B_Bfa1P4" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_270" name="Bfa1P4" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_267" name="koffB4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="konB4" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB*SPB_B*Bfa1P5-koffB*B_Bfa1P5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="B_Bfa1P5" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_276" name="Bfa1P5" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for R4: Rev. SPB-association of Bfa1-Tem1GTP complex" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB*SPB_B*Bfa1_Tem1GTP-koffB*B_Bfa1_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="B_Bfa1_Tem1GTP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_282" name="Bfa1_Tem1GTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_279" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB4*Bfa1P4_Tem1GTP*SPB_B-koffB4*B_Bfa1P4_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="B_Bfa1P4_Tem1GTP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_288" name="Bfa1P4_Tem1GTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_285" name="koffB4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="konB4" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB*SPB_B*Bfa1P5_Tem1GTP-koffB*B_Bfa1P5_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="B_Bfa1P5_Tem1GTP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_294" name="Bfa1P5_Tem1GTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_291" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for R7: Rev. SPB-association of Bfa1-Tem1GDP complex" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB*SPB_B*Bfa1_Tem1GDP-koffB*B_Bfa1_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="B_Bfa1_Tem1GDP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_300" name="Bfa1_Tem1GDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_297" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB4*SPB_B*Bfa1P4_Tem1GDP-koffB4*B_Bfa1P4_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="B_Bfa1P4_Tem1GDP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_306" name="Bfa1P4_Tem1GDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_303" name="koffB4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="konB4" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB*SPB_B*Bfa1P5_Tem1GDP-koffB*B_Bfa1P5_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="B_Bfa1P5_Tem1GDP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_312" name="Bfa1P5_Tem1GDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="SPB_B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_309" name="koffB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="konB" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for R10: Rev. association of Tem1GTP with SPB-bound Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
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
        <ParameterDescription key="FunctionParameter_319" name="B_Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_318" name="B_Bfa1_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_317" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_315" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB4T*B_Bfa1P4*Tem1GTP-koffBT*B_Bfa1P4_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="B_Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="B_Bfa1P4_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_323" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_321" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
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
        <ParameterDescription key="FunctionParameter_331" name="B_Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_330" name="B_Bfa1P5_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_329" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_327" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R13: Rev. association of Tem1GDP with SPB-bound Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konBT*B_Bfa1*Tem1GDP-koffBT*B_Bfa1_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="B_Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_336" name="B_Bfa1_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_335" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_333" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konB4T*B_Bfa1P4*Tem1GDP-koffBT*B_Bfa1P4_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="B_Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="B_Bfa1P4_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_341" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_339" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
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
        c3*(konB5T*B_Bfa1P5*Tem1GDP-koffBT*B_Bfa1P5_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_349" name="B_Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="B_Bfa1P5_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_347" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_346" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_345" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for R16: Rev. association of Tem1GTP with Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
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
        <ParameterDescription key="FunctionParameter_355" name="Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_354" name="Bfa1_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_353" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
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
        <ParameterDescription key="FunctionParameter_361" name="Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="Bfa1P4_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_359" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
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
        <ParameterDescription key="FunctionParameter_367" name="Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="Bfa1P5_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_365" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_364" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for R19: Rev. association of Tem1GDP with Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
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
        <ParameterDescription key="FunctionParameter_373" name="Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="Bfa1_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_371" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_370" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="konBT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*konB4T*Bfa1P4*Tem1GDP-koffBT*Bfa1P4_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_379" name="Bfa1P4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_378" name="Bfa1P4_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_377" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="konB4T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*konB5T*Bfa1P5*Tem1GDP-koffBT*Bfa1P5_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_384" name="Bfa1P5_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_383" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="alpha" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="koffBT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="konB5T" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R22: Rev. SPB-association of Tem1GTP" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konT*SPB_T*Tem1GTP-koffT*T_Tem1GTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="SPB_T" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="T_Tem1GTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_389" name="Tem1GTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_388" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_387" name="koffT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="konT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for R23: Rev. SPB-association of Tem1GDP" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        c3*(konT*SPB_T*Tem1GDP-koffT*T_Tem1GDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="SPB_T" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="T_Tem1GDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_395" name="Tem1GDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_394" name="c3" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_393" name="koffT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="konT" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for R24: Phosphorylation of SPB-bound Bfa1 by Kin4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*kfKin4*B_Bfa1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="B_Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_402" name="kfKin4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*kfKin4*B_Bfa1_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_398" name="B_Bfa1_Tem1GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_399" name="kfKin4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*kfKin4*B_Bfa1_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_406" name="B_Bfa1_Tem1GDP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_405" name="kfKin4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for R30: Phosphorylation of Bfa1 by cytosolic Kin4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*kfKin4Cyto*Bfa1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="Bfa1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="kfKin4Cyto" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*krCdc5*Bfa1P5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="Bfa1P5" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="krCdc5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*krCdc5*Bfa1P5_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_415" name="Bfa1P5_Tem1GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="krCdc5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*kfKin4Cyto*Bfa1_Tem1GTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_418" name="Bfa1_Tem1GTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="kfKin4Cyto" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_70">
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
        <ParameterDescription key="FunctionParameter_421" name="Bfa1P5_Tem1GDP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_420" name="krCdc5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_71">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u*kfKin4Cyto*Bfa1_Tem1GDP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="Bfa1_Tem1GDP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="kfKin4Cyto" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="u" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/go/GO:0007052"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0031578"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0051726"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:4932"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:doi:10.1038/msb.2012.15"/>
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
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-03-06T17:03:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-05-10T13:48:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-05-10T13:48:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:BIOMD0000000701"/>
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
    <p>This model is from the article:      <br />
    <strong>A dynamical model of the spindle position checkpoint</strong>
    <br />
          Ayse Koca Caydasi, Maiko Lohel, Gerd Grünert, Peter Dittrich, Gislene Pereira, Bashar Ibrahim      <em>Molecular Systems Biology</em>
          2012; 582 
      doi:      <a href="http://dx.doi.org/10.1038/msb.2012.15">10.1038/msb.2012.15</a>
    <br />
    <strong>Abstract:</strong>
    <br />
          The orientation of the mitotic spindle with respect to the polarity axis is crucial for the accuracy of asymmetric cell division. In budding yeast, a surveillance mechanism called the spindle position checkpoint (SPOC) prevents exit from mitosis when the mitotic spindle fails to align along the mother-to-daughter polarity axis. SPOC arrest relies upon inhibition of the GTPase Tem1 by the GTPase-activating protein (GAP) complex Bfa1–Bub2. Importantly, reactions signaling mitotic exit take place at yeast centrosomes (named spindle pole bodies, SPBs) and the GAP complex also promotes SPB localization of Tem1. Yet, whether the regulation of Tem1 by Bfa1–Bub2 takes place only at the SPBs remains elusive. Here, we present a quantitative analysis of Bfa1–Bub2 and Tem1 localization at the SPBs. Based on the measured SPB-bound protein levels, we introduce a dynamical model of the SPOC that describes the regulation of Bfa1 and Tem1. Our model suggests that Bfa1 interacts with Tem1 in the cytoplasm as well as at the SPBs to provide efficient Tem1 inhibition.      </p>
  <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p><p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p><p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
</p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:10:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61554" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="SPB" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:25:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C13365" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="B" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000494" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="T" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:42:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000494" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Bfa1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T12:06:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Bfa1P4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T12:15:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Bfa1P5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002221" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T13:46:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Tem1GTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:32:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Tem1GDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T15:57:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="B-Bfa1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="B-Bfa1P4" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="B-Bfa1P5" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T15:53:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="T-Tem1GTP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:32:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="T-Tem1GDP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T16:03:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="B-Bfa1-Tem1GTP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="B-Bfa1P4-Tem1GTP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="B-Bfa1P5-Tem1GTP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T14:07:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="B-Bfa1-Tem1GDP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="B-Bfa1P4-Tem1GDP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="B-Bfa1P5-Tem1GDP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T14:07:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000494" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Bfa1-Tem1GTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T12:14:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Bfa1P4-Tem1GTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T12:16:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Bfa1P5-Tem1GTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002221" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T10:37:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:15996" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Bfa1-Tem1GDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T12:14:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Bfa1P4-Tem1GDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T12:16:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Bfa1P5-Tem1GDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002221" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T10:37:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:17552" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38987" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Active Bfa1 at the SPB" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:18:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GDP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Active Bfa1 at the Cytosol" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:33:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GDP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Active Tem1 at the SPB" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:35:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GTP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Active Tem1 in the Cytosol" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:38:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GTP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Inactive Bfa1 at the SPB" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:40:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          ((1-&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>)*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GDP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Inactive Bfa1 in the cytosol" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:41:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          ((1-&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[q],Reference=Value>)*(&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GTP],Reference=Concentration>)+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GTP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Inactive Tem1 at the SPB" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:43:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Inactive Tem1 in the cytosol" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:47:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4-Tem1GDP],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5-Tem1GDP],Reference=Concentration>)*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Reference=Volume>*&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[avogadro],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Total Bfa1 at the SPB" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:50:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Bfa1 at the SPB],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Bfa1 at the SPB],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Total Bfa1 in the Cytosol" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P47113" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Bfa1 at the Cytosol],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Bfa1 in the cytosol],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="Total Tem1 at the SPB" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:53:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Tem1 at the SPB],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Tem1 at the SPB],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Total Tem1 in the Cytosol" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-04T10:53:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38987" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Tem1 in the Cytosol],Reference=Concentration>+&lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Tem1 in the cytosol],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="konB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
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
      <ModelValue key="ModelValue_1" name="koffB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
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
      <ModelValue key="ModelValue_2" name="konB4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="koffB4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="konBT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="konB4T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="konB5T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
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
      <ModelValue key="ModelValue_7" name="koffBT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="konT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
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
      <ModelValue key="ModelValue_9" name="koffT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
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
      <ModelValue key="ModelValue_10" name="kfKin4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kfKin4Cyto" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="krKin4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
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
      <ModelValue key="ModelValue_13" name="kfCdc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
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
      <ModelValue key="ModelValue_14" name="krCdc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
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
      <ModelValue key="ModelValue_15" name="khyd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="knex" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
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
      <ModelValue key="ModelValue_17" name="khydBT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
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
      <ModelValue key="ModelValue_18" name="khydB4T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
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
      <ModelValue key="ModelValue_19" name="u" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
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
      <ModelValue key="ModelValue_20" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
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
      <ModelValue key="ModelValue_21" name="q" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
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
      <ModelValue key="ModelValue_22" name="avogadro" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T09:58:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1: Rev. SPB-association of Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:25:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5389" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R2: Rev. SPB-association of Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T13:57:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5388" name="koffB4" value="0.0365"/>
          <Constant key="Parameter_5387" name="konB4" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T13:57:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5386" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5385" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R4: Rev. SPB-association of Bfa1-Tem1GTP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:22:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5384" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5383" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:22:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5382" name="koffB4" value="0.0365"/>
          <Constant key="Parameter_5381" name="konB4" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5380" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5379" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R7: Rev. SPB-association of Bfa1-Tem1GDP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5378" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5377" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5376" name="koffB4" value="0.0365"/>
          <Constant key="Parameter_5375" name="konB4" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5374" name="koffB" value="0.0012"/>
          <Constant key="Parameter_5373" name="konB" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R10: Rev. association of Tem1GTP with SPB-bound Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T10:20:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5372" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5371" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:05:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5369" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:08:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5368" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5367" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R13: Rev. association of Tem1GDP with SPB-bound Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:08:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5365" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:09:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5363" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:09:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5362" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5361" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R16: Rev. association of Tem1GTP with Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:10:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5685" name="alpha" value="1"/>
          <Constant key="Parameter_5686" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5684" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:10:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5687" name="alpha" value="1"/>
          <Constant key="Parameter_5714" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5715" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:10:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5713" name="alpha" value="1"/>
          <Constant key="Parameter_5716" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5698" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="R19: Rev. association of Tem1GDP with Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:10:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5699" name="alpha" value="1"/>
          <Constant key="Parameter_5697" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5700" name="konBT" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:11:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5360" name="alpha" value="1"/>
          <Constant key="Parameter_5359" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5358" name="konB4T" value="3.65e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:11:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5357" name="alpha" value="1"/>
          <Constant key="Parameter_5356" name="koffBT" value="0.183"/>
          <Constant key="Parameter_5355" name="konB5T" value="7e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="R22: Rev. SPB-association of Tem1GTP" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T13:57:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5354" name="koffT" value="0.183"/>
          <Constant key="Parameter_5353" name="konT" value="1.9e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="R23: Rev. SPB-association of Tem1GDP" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:02:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5352" name="koffT" value="0.183"/>
          <Constant key="Parameter_5351" name="konT" value="1.9e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="R24: Phosphorylation of SPB-bound Bfa1 by Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:12:34Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5350" name="kfKin4" value="1000"/>
          <Constant key="Parameter_5349" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:12:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5348" name="kfKin4" value="1000"/>
          <Constant key="Parameter_5347" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:12:51Z</dcterms:W3CDTF>
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
        <ListOfConstants>
          <Constant key="Parameter_5346" name="kfKin4" value="1000"/>
          <Constant key="Parameter_5345" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="R27: Phosphorylation of SPB-bound Bfa1 by Cdc5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:13:13Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5653" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="R28: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Cdc5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:13:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5654" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="R29: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Cdc5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:13:30Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5652" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="R47: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5655" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="R46: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5344" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="R48: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:10:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5343" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
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
      <Reaction key="Reaction_32" name="R30: Phosphorylation of Bfa1 by cytosolic Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:13:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5342" name="kfKin4Cyto" value="0.09"/>
          <Constant key="Parameter_5341" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="R33: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:14:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006470" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5340" name="k1" value="0.0251"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
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
      <Reaction key="Reaction_34" name="R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:14:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006470" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5339" name="krCdc5" value="0.01"/>
          <Constant key="Parameter_5338" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="R40: GDP- for GTP nucleotide exchange" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T13:57:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
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
          <Constant key="Parameter_5337" name="k1" value="0.0136"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="R39: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T13:57:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5336" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="R42: GDP- for GTP nucleotide exchange" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005488" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5335" name="k1" value="0.0136"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="R41: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T13:57:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
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
          <Constant key="Parameter_5334" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="R44: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5333" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="R43: GAP-accelerated GTP-hydrolysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5332" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="R45: GTP-hydrolysis with intrinisc GTPase activity" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T14:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16702" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5331" name="k1" value="0.00224"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="R34: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:14:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006470" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5330" name="k1" value="0.0251"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:15:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006470" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5329" name="krCdc5" value="0.01"/>
          <Constant key="Parameter_5328" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:13:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5327" name="kfKin4Cyto" value="0.09"/>
          <Constant key="Parameter_5326" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="R35: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006470" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5325" name="k1" value="0.0251"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:15:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006470" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5324" name="krCdc5" value="0.01"/>
          <Constant key="Parameter_5318" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-08T12:13:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006468" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5317" name="kfKin4Cyto" value="0.09"/>
          <Constant key="Parameter_5316" name="u" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="SPOC deactivation upon correct spindle alignment" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-03T15:23:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time> ge 1800
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Values[u]" targetKey="ModelValue_19">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T11:35:17Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol]" value="1e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB]" value="2.9999999999999998e-18" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B]" value="150.49330001643" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T]" value="299.90261467859995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1]" value="1222.4945939710001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Bfa1P5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GTP]" value="2956.8711607869991" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Tem1GDP]" value="481.16905447430003" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1]" value="150.49330001643" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[T-Tem1GDP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P4-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[B-Bfa1P5-Tem1GTP]" value="0" type="Species" simulationType="reactions"/>
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
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Tem1 at the SPB]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Tem1 in the Cytosol]" value="178066965275285.59" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Bfa1 at the SPB]" value="271887584.2502681" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Bfa1 in the cytosol]" value="73620354278784.109" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Inactive Tem1 at the SPB]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Inactive Tem1 in the cytosol]" value="28976681314654.434" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Total Bfa1 at the SPB]" value="271887584.2502681" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Total Bfa1 in the Cytosol]" value="73620354278784.109" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Total Tem1 at the SPB]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Total Tem1 in the Cytosol]" value="207043646589940.06" type="Species" simulationType="assignment"/>
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
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 2956.8711607869991 150.49330001643 481.16905447430003 0 0 1222.4945939710001 0 0 150.49330001643 0 0 0 0 0 0 0 0 0 0 0 0 0 0 299.90261467859995 0 178066965275285.59 73620354278784.109 28976681314654.434 73620354278784.109 207043646589940.06 0 0 271887584.2502681 0 271887584.2502681 0 1e-13 2.9999999999999998e-18 1250000 0.0011999999999999999 20000 0.036499999999999998 36500000 36500000 7000000 0.183 1900000 0.183 1000 0.089999999999999997 0.025100000000000001 1 0.01 0.0022399999999999998 0.013599999999999999 0.0022399999999999998 2 1 1 0 6.0221415000000003e+23 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
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
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="36"/>
        <Parameter name="Duration" type="float" value="3600"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_17" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_18" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_26" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_28" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Tem1 Cytosol" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Tem1 in the Cytosol]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Tem1 in the Cytosol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Tem1 in the Cytosol]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
    <PlotSpecification name="Bfa1 Cytosol" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Bfa1 at the Cytosol]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[Cytosol],Vector=Metabolites[Active Bfa1 at the Cytosol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Bfa1 in the Cytosol]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
    <PlotSpecification name="Bfa1 SPB" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Bfa1 at the SPB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Bfa1 at the SPB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Bfa1 at the SPB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
    <PlotSpecification name="Tem1 SPB" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Active Tem1 at the SPB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Caydasi2012 - Inhibition of Tem1 by the GAP complex in Spindle Position Checkpoint,Vector=Compartments[SPB],Vector=Metabolites[Active Tem1 at the SPB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total Tem1 at the SPB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
  <SBMLReference file="MODEL1202090001.xml">
    <SBMLMap SBMLid="Active_Bfa1_at_the_Cytosol" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Active_Bfa1_at_the_SPB" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Active_Tem1_at_the_SPB" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Active_Tem1_in_the_Cytosol" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="B_Bfa1" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="B_Bfa1P4" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="B_Bfa1P4_Tem1GDP" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="B_Bfa1P4_Tem1GTP" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="B_Bfa1P5" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="B_Bfa1P5_Tem1GDP" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="B_Bfa1P5_Tem1GTP" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="B_Bfa1_Tem1GDP" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="B_Bfa1_Tem1GTP" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Bfa1" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Bfa1P4" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Bfa1P4_Tem1GDP" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Bfa1P4_Tem1GTP" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Bfa1P5" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Bfa1P5_Tem1GDP" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Bfa1P5_Tem1GTP" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Bfa1_Tem1GDP" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Bfa1_Tem1GTP" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Function_for_R10__Rev__association_of_Tem1GTP_with_SPB_bound_Bfa1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_R11__Rev__association_of_Tem1GTP_with_SPB_bound_Kin4_phosphorylated_Bfa1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_R12__Rev__association_of_Tem1GTP_with_SPB_bound_Cdc5_phosphorylated_Bfa1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_R13__Rev__association_of_Tem1GDP_with_SPB_bound_Bfa1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_R14__Rev__association_of_Tem1GDP_with_SPB_bound_Kin4_phosphorylated_Bfa1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_R15__Rev__association_of_Tem1GDP_with_SPB_bound_Cdc5_phosphorylated_Bfa1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_R16__Rev__association_of_Tem1GTP_with_Bfa1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_R17__Rev__association_of_Tem1GTP_with_Kin4_phosphorylated_Bfa1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_R18__Rev__association_of_Tem1GTP_with_Cdc5_phosphorylated_Bfa1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_R19__Rev__association_of_Tem1GDP_with_Bfa1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_R1__Rev__SPB_association_of_Bfa1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_R20__Rev__association_of_Tem1GDP_with_Kin4_phosphorylated_Bfa1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_R21__Rev__association_of_Tem1GDP_with_Cdc5_phosphorylated_Bfa1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_R22__Rev__SPB_association_of_Tem1GTP" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_R23__Rev__SPB_association_of_Tem1GDP" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_R24__Phosphorylation_of_SPB_bound_Bfa1_by_Kin4" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_R25__Phosphorylation_of_SPB_bound_Bfa1_Tem1GTP_by_Kin4" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_R26__Phosphorylation_of_SPB_bound_Bfa1_Tem1GDP_by_Kin4" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_R2__Rev__SPB_association_of_Kin4_phosphorylated_Bfa1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_R30__Phosphorylation_of_Bfa1_by_cytosolic_Kin4" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_R31__Phosphorylation_of_Bfa1_Tem1GTP_by_cytosolic_Kin4" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_R32__Phosphorylation_of_Bfa1_Tem1GDP_by_cytosolic_Kin4" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_R36__Dephosphorylation_of_Cdc5_phosphorylated_Bfa1_presumably_by_PP2A" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_R37__Dephosphorylation_of_Cdc5_phosphorylated_Bfa1_presumably_by_PP2A" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_R38__Dephosphorylation_of_Cdc5_phosphorylated_Bfa1_presumably_by_PP2A" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_R3__Rev__SPB_association_of_Cdc5_phosphorylated_Bfa1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_R4__Rev__SPB_association_of_Bfa1_Tem1GTP_complex" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_R5__Rev__SPB_association_of_Kin4_phosphorylated_Bfa1_Tem1GTP_complex" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_R6__Rev__SPB_association_of_Cdc5_phosphorylated_Bfa1_Tem1GTP_complex" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_R7__Rev__SPB_association_of_Bfa1_Tem1GDP_complex" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_R8__Rev___SPB_association_of_Kin4_phosphorylated_Bfa1_Tem1GDP_complex" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_R9__Rev__SPB_association_of_Cdc5_phosphorylated_Bfa1_Tem1GDP_complex" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Inactive_Bfa1_at_the_SPB" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Inactive_Bfa1_in_the_cytosol" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Inactive_Tem1_at_the_SPB" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Inactive_Tem1_in_the_cytosol" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="R1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="R11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="R12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="R13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="R14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="R15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="R16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="R17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="R18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="R19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="R2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="R20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="R21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="R22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="R23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="R24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="R25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="R26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="R27" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="R28" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="R29" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="R3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="R30" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="R31" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="R32" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="R33" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="R34" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="R35" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="R36" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="R37" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="R38" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="R39" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="R4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R40" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="R41" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="R42" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="R43" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="R44" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="R45" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="R46" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="R47" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="R48" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="R5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="R6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="R9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="SPB_B" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="SPB_T" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="T_Tem1GDP" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="T_Tem1GTP" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Tem1GDP" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Tem1GTP" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Total_Bfa1_at_the_SPB" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="Total_Bfa1_in_the_Cytosol" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Total_Tem1_at_the_SPB" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="Total_Tem1_in_the_Cytosol" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="avogadro" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="c2" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="c3" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="kfCdc5" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kfKin4" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kfKin4Cyto" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="khyd" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="khydB4T" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="khydBT" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="knex" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="koffB" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="koffB4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="koffBT" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="koffT" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="konB" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="konB4" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="konB4T" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="konB5T" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="konBT" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="konT" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="krCdc5" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="krKin4" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="q" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="u" COPASIkey="ModelValue_19"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
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
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
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
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-07-14T11:35:15Z</dcterms:W3CDTF>
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
