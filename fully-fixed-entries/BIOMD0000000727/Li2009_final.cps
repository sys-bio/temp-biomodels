<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 196) (http://www.copasi.org) at 2018-12-11 15:39:36 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="196" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T14:37:00Z</dcterms:W3CDTF>
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
    <Function key="Function_40" name="function with 1k 1J 3M" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:10:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k *( J^2/ (J^2 + M1^2))*M2 * M3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="J" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_250" name="M3" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function with 1k 1J 2M _2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:10:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k *( M1^2/ (J^2 + M1^2))*M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="J" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="M2" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function for deg of CtrA and CtrA_P" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:18:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*(M1^2/(J1^2+M1^2))*(M2^4/(J2^4+M2^4))*(M3^4/(J3^4+M3^4))*M4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="J1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="J2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="M3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="M4" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="J3" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function 1k 2M" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*M1*M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="M2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function for DnaA 1k 1J 2M" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:35:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k* (J^2/(J^2 + M1^2))*(2-M2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="J" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="M2" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function for DnaA 1k 1K 2M _2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:35:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k* (M1^2/(J^2 + M1^2))*(2-M2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_285" name="J" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="M2" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function with 1k 1J 2M" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:10:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k *( J^2/ (J^2 + M1^2))*M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="J" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="M2" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function for Ini" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * ((M1/theta1)^4 * (M2/theta2)^4 /(1 + (M1/theta1)^4 + (M2/theta2)^4  + (M3/theta3)^4 + (M2/theta2)^4 * (M3/theta3)^4 +(M4/theta4)^4) ) * M5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_293" name="theta1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="theta2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="M3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="theta3" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="M4" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="theta4" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="M5" order="9" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function for 1k 1J 2M ^4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:10:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k *( M1^4/ (J^4 + M1^4))*M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_309" name="J" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="M2" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function for 1k 1m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:38:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*M
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="M" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function for h____" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:44:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k* (M1^4 / (J^4 + M1^4))*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_303" name="J" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="S" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function for H _PodJL and PerP" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:12:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * S * H * ((1 - M)/ (J + 1-M))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_313" name="H" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="M" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="J" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function for DivJ1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:43:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (1- H) * k * (J^2 /(J^2 + M^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="J" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="M" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function dor DivJ 2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:44:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * M1 * (1 - H) * ((1-M2)/(J + 1- M2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_322" name="H" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="J" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function for 1J 1k 1m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:50:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k *(M1^2/(J^2 + M1^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="J" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function for Divk 1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:09:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * M1 * (M2^2/(J^2 + M2^2))*(1+ H *(M4 -1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_327" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="J" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="H" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="M4" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function for DivK2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:09:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * M1 * (M2^2/(J^2 + M2^2))*(M4+ H *(1-M4 ))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_338" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="J" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="M4" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_335" name="H" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function for CckA" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:27:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * (M1 - M2) *(J^2/(J^2 + M3^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_343" name="J" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="M3" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function for CpdR 1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:37:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * (M1 - M2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="M2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function for CpdR 2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:38:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * M1 * (M2 ^2/(J^2 + M2^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_347" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_352" name="J" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function for ParAADP 2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:49:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k* (M1 -1) * M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_354" name="M2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function for FtsQ" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T09:58:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*( M1^2/(J1^2 + M1^2))*(M2^4/(J2^4 + M2^4))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_353" name="J1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_360" name="J2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function for FtsZ synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:06:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k *(J^2/(J^2 + M1^2))*M2*(1- M3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="J" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_361" name="M3" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function for 1k 1-M1 M2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:09:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k* (1-M1) * M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="M2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function for Z synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:22:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k *((1 - M)/(J+1-M))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_371" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="J" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function for Z deg" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:23:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1 + k2*(M1^4/(J1^4 + M1^4))*((M2/theta1)^4/(1 + (M2/theta1)^4 + (M3/theta2)^4)) )*(S/(J2 +S))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="k2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_375" name="J1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="M2" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_377" name="theta1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="M3" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="theta2" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="S" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_381" name="J2" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Li2009- Assymetric Caulobacter cell cycle" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0007049"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0051726"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:155892"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:biomodels.db:BIOMD0000000718"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19680425"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1371/journal.pcbi.1000463"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T13:33:26Z</dcterms:W3CDTF>
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
        <dcterms:W3CDTF>2018-12-10T13:41:16</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      The asymmetric cell division cycle of Caulobacter crescentus is orchestrated by an elaborate gene-protein regulatory network, centered on three major control proteins, DnaA, GcrA and CtrA. The regulatory network is cast into a quantitative computational model to investigate in a systematic fashion how these three proteins control the relevant genetic, biochemical and physiological properties of proliferating bacteria. Different controls for both swarmer and stalked cell cycles are represented in the mathematical scheme. The model is validated against observed phenotypes of wild-type cells and relevant mutants, and it predicts the phenotypes of novel mutants and of known mutants under novel experimental conditions. Because the cell cycle control proteins of Caulobacter are conserved across many species of alpha-proteobacteria, the model we are proposing here may be applicable to other genera of importance to agriculture and medicine
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Caulobacter" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:155892" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T12:00:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_30" name="DnaA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P0CAU4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="GcrA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:A0A0H3C9J4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="CtrA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P0CAW8" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="CtrA_P" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P0CAW8" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="DivK" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q45976" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="DivK_P" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C1897" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q45976" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="I" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="CcrM" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:36:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P0CAW2" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="hcori" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C44256" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:44:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="hctrA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C44256" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T15:40:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="hccrM" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C44256" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="hftsZ" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C44256" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Ini" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006270" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="DNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C449" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="Count" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:36:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C13202" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="PodJL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9ZG88" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="PerP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:A0A0H3C966" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="DivJ" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:A0A0H3C5M8" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="CckA_P" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:36:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:A0A0H3C8Q4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="CpdR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9AA62" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="RcdA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T11:24:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9A3A9" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="ParAADP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P0CAV7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="FtsZ" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:A0A0V2FFH3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Zring" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:22:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0043226" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="CckA_tot" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:36:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:A0A0H3C8Q4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="CpdR_tot" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9AA62" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="ParA_tot" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P0CAV7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="Elong" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0022616" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="Z" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="FtsQ" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T09:57:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:A0A0V2FFD6" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_96" name="H" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="ks,CtrA-P1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="ks,CtrA-P2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="kd,CtrA1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="kd,CtrA2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="ktrans,CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="ktrans.CtrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="ks,GcrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="kd,GcrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="ks,DnaA1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_105">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="ks,DnaA2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_106">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="kd,DnaA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="ka,Ini" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_108">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="kelong" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="ks,I" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_110">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="kd,I" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_111">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="ks,CcrM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_112">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="kd,CcrM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_113">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="km,Cori" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_114">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="km,ctrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_115">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="km,ccrM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_116">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="km,ftsz" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_117">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="ks,PodJL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_118">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="kd,PodJL1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_119">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="kd,PodJL2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_120">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="ksep,PodJL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_121">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="ks,PerP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_122">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="kd,PerP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_123">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="ksep,PerP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_124">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="ks,DivJ1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_125">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="ks,DivJ2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_126">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="kd,DivJ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_127">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="ksep,divJ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_128">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="ks,DivK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_129">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="kd,DivK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_130">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_131" name="ktrans,DivK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_131">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_132" name="ktrans,DivK_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_132">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_133" name="ktrans,CckA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_133">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_134" name="ktrans,CckA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_134">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="ktrans,CpdR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_135">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_136" name="ktrans,CpdR_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_136">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_137" name="ktrans,ParAATP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_137">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_138" name="ktrans,ParAADP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_138">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="ks,RcdA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_139">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="kd,RcdA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_140">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="ks,FtsQ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_141">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="kd,FtsQ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_142">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="ks,FtsZ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_143">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_144" name="kd,FtsZ1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_144">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_145" name="kd,FtsZ2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_145">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_146" name="kd,FtsZ3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_146">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_147" name="ks,Zring" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_147">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_148" name="kZ,open" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_148">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_149" name="kZ,closed1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_149">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_150" name="kZ,closed2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_150">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94967" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_151" name="Ji,CtrA-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_151">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_152" name="Ja,CtrA-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_152">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_153" name="Jd,CtrA-DivK_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_153">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_154" name="jd,CtrA-CpdR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_154">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_155" name="jd,CtrA-RcdA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_155">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_156" name="Ji,GcrA-CtrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_156">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_157" name="JiDnaA-GcrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_157">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_158" name="Ja,Dna-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_158">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_159" name="Ja,i-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_159">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_160" name="Jm,Cori" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_160">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_161" name="Jm,ctrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_161">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_162" name="jm,ccrM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_162">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_163" name="Jm,ftsZ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_163">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_164" name="Ji,PodJL-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_164">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_165" name="Jd,PodJL-PerP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_165">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_166" name="jsep,PodJL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_166">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_167" name="Jsep,PerP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_167">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_168" name="Ji,DivJ-PodJL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_168">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_169" name="Jsep,DivJ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_169">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_170" name="Ja,DivK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_170">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="JDivk_P-PodJL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_171">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="JDivk-DivJ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_172">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="Ji,Ccka-DivK_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_173">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="Ja,CpdR-CckA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_174">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="Ja,RcdA-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_175">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_176" name="Ja,FtsQ-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_176">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="Ja,FtsQ,DNA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_177">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_178" name="JiFtsZ-CtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_178">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_179" name="Ja,open" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_179">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="JZ-FtsQ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_180">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:32:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_181" name="Ja,closed" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_181">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001144" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:31:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_182" name="thethaCtrA_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_182">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:34:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48228" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_183" name="thethaGcrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_183">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:34:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48228" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_184" name="thethaDnaA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_184">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:34:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48228" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_185" name="thethaCori" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_185">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48228" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_186" name="thethaZring" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_186">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:34:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48228" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_187" name="thethaParAADP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_187">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:34:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48228" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_188" name="Pelong" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_188">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C104788" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_189" name="PccrM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_189">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C104788" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_190" name="PctrA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_190">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C104788" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_191" name="PftsZ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_191">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:33:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C104788" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_57" name="CtrA synthesis 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:12:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4903" name="k" value="0.0159"/>
          <Constant key="Parameter_4938" name="J" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="CtrA synthesis 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:14:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4940" name="k" value="0.14"/>
          <Constant key="Parameter_4941" name="J" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="CtrA decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:16:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="CtrA degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:20:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4937" name="k1" value="0.25"/>
          <Constant key="Parameter_4936" name="J1" value="0.55"/>
          <Constant key="Parameter_4939" name="J2" value="0.6"/>
          <Constant key="Parameter_4942" name="J3" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_155"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="CtrA dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:23:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4933" name="k1" value="0.025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="CtrA phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:23:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4931" name="k" value="0.095"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="CtrA_P degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:26:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4930" name="k1" value="0.25"/>
          <Constant key="Parameter_4934" name="J1" value="0.55"/>
          <Constant key="Parameter_4932" name="J2" value="0.6"/>
          <Constant key="Parameter_4907" name="J3" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_155"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="CtrA_P decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:17:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4905" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="DnaA synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:35:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4904" name="k" value="0.0031"/>
          <Constant key="Parameter_4908" name="J" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="DnaA synthesis 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:34:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4906" name="k" value="0.0022"/>
          <Constant key="Parameter_4910" name="J" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="DnaA decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:34:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4925" name="k1" value="0.007"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="GcrA synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:40:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4913" name="k" value="0.055"/>
          <Constant key="Parameter_4927" name="J" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="GcrA decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-06T16:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4928" name="k1" value="0.022"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="Initiation of replication" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:22:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4922" name="k" value="0.01"/>
          <Constant key="Parameter_4909" name="theta1" value="0.65"/>
          <Constant key="Parameter_4917" name="theta2" value="0.65"/>
          <Constant key="Parameter_4924" name="theta3" value="0.5"/>
          <Constant key="Parameter_4911" name="theta4" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="Elongation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:29:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4923" name="k" value="0.0065"/>
          <Constant key="Parameter_4916" name="J" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="DNA synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:33:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4920" name="k" value="0.0065"/>
          <Constant key="Parameter_4915" name="J" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="Inermediate synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:34:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4919" name="k" value="0.09"/>
          <Constant key="Parameter_4918" name="J" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="intermediate decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:35:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4921" name="k1" value="0.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="CcrM synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:37:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4926" name="k" value="0.072"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="CcrM decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:39:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4912" name="k1" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="methylation cori" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:45:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4914" name="k" value="0.4"/>
          <Constant key="Parameter_4929" name="J" value="0.95"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="methylation ctrA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:46:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4943" name="k" value="0.4"/>
          <Constant key="Parameter_4944" name="J" value="0.95"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="methylation ccrM" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4950" name="k" value="0.4"/>
          <Constant key="Parameter_4949" name="J" value="0.95"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="methylation ftsZ" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T10:46:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4951" name="k" value="0.4"/>
          <Constant key="Parameter_4946" name="J" value="0.95"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="PodJL synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:05:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4945" name="k" value="0.043"/>
          <Constant key="Parameter_4948" name="J" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="Podjl decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:07:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4947" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="PodJL degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:09:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4952" name="k" value="0.002"/>
          <Constant key="Parameter_4956" name="J" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="PodJL degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T12:15:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4954" name="k" value="0.3"/>
          <Constant key="Parameter_4953" name="H" value="0"/>
          <Constant key="Parameter_4957" name="J" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_166"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="PerP synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:39:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4955" name="k" value="0.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="PerP decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:39:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4959" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="PerP degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:40:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="k" value="0.011"/>
          <Constant key="Parameter_4962" name="H" value="0"/>
          <Constant key="Parameter_4958" name="J" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="DivJ synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:43:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4960" name="v" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="DivJ synthesis2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:46:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4965" name="H" value="0"/>
          <Constant key="Parameter_4966" name="k" value="0.025"/>
          <Constant key="Parameter_4967" name="J" value="0.13"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="DivJ decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:47:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="DivJ degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T13:48:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4964" name="k" value="0.3"/>
          <Constant key="Parameter_4968" name="H" value="0"/>
          <Constant key="Parameter_4970" name="J" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="DivK synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:01:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="k" value="0.0024"/>
          <Constant key="Parameter_4971" name="J" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_170"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="DivK decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:17:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4972" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="DivK dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:18:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="k" value="0.6"/>
          <Constant key="Parameter_4974" name="J" value="0.3"/>
          <Constant key="Parameter_4975" name="H" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="DivK phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:20:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4976" name="k" value="0.15"/>
          <Constant key="Parameter_4983" name="J" value="0.3"/>
          <Constant key="Parameter_4982" name="H" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_172"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="CckA_P decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:36:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="CckA_P synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:31:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4980" name="k" value="0.2"/>
          <Constant key="Parameter_4978" name="J" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="CpdR synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:39:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="k" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="CpdR degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:39:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="k" value="0.6"/>
          <Constant key="Parameter_4985" name="J" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="ParAADP synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:47:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="k" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="parAADP degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:50:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="k" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="RcdA synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:52:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="k" value="0.023"/>
          <Constant key="Parameter_4984" name="J" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="RcdA decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-07T16:51:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="k1" value="0.017"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="FtsQ synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:00:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k" value="0.06"/>
          <Constant key="Parameter_4991" name="J1" value="0.5"/>
          <Constant key="Parameter_4992" name="J2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="FtsQ decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:00:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k1" value="0.035"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="FtsZ synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:07:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="k" value="0.036"/>
          <Constant key="Parameter_4996" name="J" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="FtsZ decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:08:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="0.009"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="FtsZ degradation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:18:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="FtsZ degradation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:18:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="k" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="Zring closing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:21:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k" value="0.035"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="Z synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:23:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="k" value="0.8"/>
          <Constant key="Parameter_5004" name="J" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_179"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="Z degrdataion" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:23:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_59" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="k1" value="0.0001"/>
          <Constant key="Parameter_5001" name="k2" value="1.6"/>
          <Constant key="Parameter_5005" name="J1" value="0.8"/>
          <Constant key="Parameter_5003" name="theta1" value="0.3"/>
          <Constant key="Parameter_5009" name="theta2" value="0.3"/>
          <Constant key="Parameter_5011" name="J2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_181"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="DivK_P decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T16:38:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_7" name="Ini equal 0.05Count" fireAtInitialTime="1" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Ini],Reference=Concentration> >= 0.05*&lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_44">
            <Expression>
              &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>*2
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_57">
            <Expression>
              &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong],Reference=Concentration>+&lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Ini],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_43">
            <Expression>
              &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[DNA],Reference=Concentration>+&lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Ini],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_42">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_38">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="Z equals 0" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:43:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Z],Reference=Concentration> &lt;= 0.1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_44">
            <Expression>
              &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>/2
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_53">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_57">
            <Expression>
              &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong],Reference=Concentration>/2
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_43">
            <Expression>
              &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[DNA],Reference=Concentration>/2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="Elong reset by count" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:47:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong],Reference=Concentration> >= &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>/2
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_57">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="hcori reset by Elong" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:51:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong],Reference=Concentration>*2 >= &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Pelong],Reference=Value>*&lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_38">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="hctrA reset by Elong" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:51:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong],Reference=Concentration>*2 >= &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[PctrA],Reference=Value>*&lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_39">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="hccrM reset by Elong" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:51:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong],Reference=Concentration>*2 >= &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[PccrM],Reference=Value>*&lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_40">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="hftsZ reset by Elong" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-10T10:51:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong],Reference=Concentration>*2 >= &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[PftsZ],Reference=Value>*&lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count],Reference=Concentration>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_41">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[DnaA]" value="4.6972698684600005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[GcrA]" value="3.9143915570500003e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[CtrA]" value="2.4088563428000002e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[CtrA_P]" value="4.8177126856000004e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[DivK]" value="3.9746129656200004e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[DivK_P]" value="2.0475278913800002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[I]" value="5.4199267712999997e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[CcrM]" value="9.0332112855000007e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[hcori]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[hctrA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[hccrM]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[hftsZ]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Ini]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[DNA]" value="6.3232478998500003e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Count]" value="1.2044281714e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[PodJL]" value="1.2044281714000001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[PerP]" value="3.3121774713500002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[DivJ]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[CckA_P]" value="4.5768270513200005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[CpdR]" value="3.9746129656200004e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[RcdA]" value="4.4563842341799998e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[ParAADP]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[FtsZ]" value="3.1917346542100002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Zring]" value="2.4088563428000002e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[CckA_tot]" value="7.8287831141000007e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[CpdR_tot]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[ParA_tot]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Elong]" value="3.0110704285000004e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[Z]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Compartments[Caulobacter],Vector=Metabolites[FtsQ]" value="1.2044281714000001e+20" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[H]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,CtrA-P1]" value="0.015900000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,CtrA-P2]" value="0.14000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CtrA1]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CtrA2]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CtrA_P]" value="0.025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans.CtrA]" value="0.095000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,GcrA]" value="0.055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,GcrA]" value="0.021999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DnaA1]" value="0.0030999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DnaA2]" value="0.0022000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,DnaA]" value="0.0070000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ka\,Ini]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kelong]" value="0.0064999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,I]" value="0.089999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,I]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,CcrM]" value="0.071999999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CcrM]" value="0.070000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,Cori]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,ctrA]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,ccrM]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,ftsz]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,PodJL]" value="0.042999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,PodJL1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,PodJL2]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ksep\,PodJL]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,PerP]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,PerP]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ksep\,PerP]" value="0.010999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DivJ1]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DivJ2]" value="0.025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,DivJ]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ksep\,divJ]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DivK]" value="0.0023999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,DivK]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,DivK]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,DivK_P]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CckA_P]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CckA]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CpdR]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CpdR_P]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,ParAATP]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,ParAADP]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,RcdA]" value="0.023" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,RcdA]" value="0.017000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,FtsQ]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsQ]" value="0.035000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,FtsZ]" value="0.035999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsZ1]" value="0.0089999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsZ2]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsZ3]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,Zring]" value="0.035000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kZ\,open]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kZ\,closed1]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kZ\,closed2]" value="1.6000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,CtrA-CtrA_P]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,CtrA-CtrA_P]" value="0.45000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jd\,CtrA-DivK_P]" value="0.55000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jd\,CtrA-CpdR]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jd\,CtrA-RcdA]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,GcrA-CtrA]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JiDnaA-GcrA]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,Dna-CtrA_P]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,i-CtrA_P]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jm\,Cori]" value="0.94999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jm\,ctrA]" value="0.94999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jm\,ccrM]" value="0.94999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jm\,ftsZ]" value="0.94999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,PodJL-CtrA_P]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jd\,PodJL-PerP]" value="0.45000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jsep\,PodJL]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jsep\,PerP]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,DivJ-PodJL]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jsep\,DivJ]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,DivK]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JDivk_P-PodJL]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JDivk-DivJ]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,Ccka-DivK_P]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,CpdR-CckA_P]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,RcdA-CtrA_P]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,FtsQ-CtrA_P]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,FtsQ\,DNA]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JiFtsZ-CtrA_P]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,open]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JZ-FtsQ]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,closed]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaCtrA_P]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaGcrA]" value="0.65000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaDnaA]" value="0.65000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaCori]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaZring]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaParAADP]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Pelong]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[PccrM]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[PctrA]" value="0.375" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[PftsZ]" value="0.625" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA synthesis 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA synthesis 1],ParameterGroup=Parameters,Parameter=k" value="0.015900000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,CtrA-P1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA synthesis 1],ParameterGroup=Parameters,Parameter=J" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,CtrA-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA synthesis 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA synthesis 2],ParameterGroup=Parameters,Parameter=k" value="0.14000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,CtrA-P2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA synthesis 2],ParameterGroup=Parameters,Parameter=J" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,CtrA-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA decay],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CtrA1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CtrA2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA degradation],ParameterGroup=Parameters,Parameter=J1" value="0.55000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jd\,CtrA-DivK_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA degradation],ParameterGroup=Parameters,Parameter=J2" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jd\,CtrA-CpdR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA degradation],ParameterGroup=Parameters,Parameter=J3" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jd\,CtrA-RcdA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA dephosphorylation],ParameterGroup=Parameters,Parameter=k1" value="0.025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA phosphorylation],ParameterGroup=Parameters,Parameter=k" value="0.095000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans.CtrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA_P degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA_P degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CtrA2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA_P degradation],ParameterGroup=Parameters,Parameter=J1" value="0.55000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jd\,CtrA-DivK_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA_P degradation],ParameterGroup=Parameters,Parameter=J2" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jd\,CtrA-CpdR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA_P degradation],ParameterGroup=Parameters,Parameter=J3" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jd\,CtrA-RcdA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA_P decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CtrA_P decay],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CtrA1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA synthesis],ParameterGroup=Parameters,Parameter=k" value="0.0030999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DnaA1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA synthesis],ParameterGroup=Parameters,Parameter=J" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JiDnaA-GcrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA synthesis 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA synthesis 2],ParameterGroup=Parameters,Parameter=k" value="0.0022000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DnaA2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA synthesis 2],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,Dna-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DnaA decay],ParameterGroup=Parameters,Parameter=k1" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,DnaA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[GcrA synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[GcrA synthesis],ParameterGroup=Parameters,Parameter=k" value="0.055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,GcrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[GcrA synthesis],ParameterGroup=Parameters,Parameter=J" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,GcrA-CtrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[GcrA decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[GcrA decay],ParameterGroup=Parameters,Parameter=k1" value="0.021999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,GcrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Initiation of replication]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Initiation of replication],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ka\,Ini],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Initiation of replication],ParameterGroup=Parameters,Parameter=theta1" value="0.65000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaDnaA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Initiation of replication],ParameterGroup=Parameters,Parameter=theta2" value="0.65000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaGcrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Initiation of replication],ParameterGroup=Parameters,Parameter=theta3" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaCtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Initiation of replication],ParameterGroup=Parameters,Parameter=theta4" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaCori],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Elongation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Elongation],ParameterGroup=Parameters,Parameter=k" value="0.0064999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kelong],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Elongation],ParameterGroup=Parameters,Parameter=J" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Pelong],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DNA synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DNA synthesis],ParameterGroup=Parameters,Parameter=k" value="0.0064999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kelong],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DNA synthesis],ParameterGroup=Parameters,Parameter=J" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Pelong],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Inermediate synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Inermediate synthesis],ParameterGroup=Parameters,Parameter=k" value="0.089999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Inermediate synthesis],ParameterGroup=Parameters,Parameter=J" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,i-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[intermediate decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[intermediate decay],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CcrM synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CcrM synthesis],ParameterGroup=Parameters,Parameter=k" value="0.071999999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,CcrM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CcrM decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CcrM decay],ParameterGroup=Parameters,Parameter=k1" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,CcrM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation cori]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation cori],ParameterGroup=Parameters,Parameter=k" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,Cori],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation cori],ParameterGroup=Parameters,Parameter=J" value="0.94999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jm\,Cori],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ctrA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ctrA],ParameterGroup=Parameters,Parameter=k" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,ctrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ctrA],ParameterGroup=Parameters,Parameter=J" value="0.94999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jm\,ctrA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ccrM]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ccrM],ParameterGroup=Parameters,Parameter=k" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,ccrM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ccrM],ParameterGroup=Parameters,Parameter=J" value="0.94999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jm\,ccrM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ftsZ]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ftsZ],ParameterGroup=Parameters,Parameter=k" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[km\,ftsz],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[methylation ftsZ],ParameterGroup=Parameters,Parameter=J" value="0.94999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jm\,ftsZ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL synthesis],ParameterGroup=Parameters,Parameter=k" value="0.042999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,PodJL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL synthesis],ParameterGroup=Parameters,Parameter=J" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,PodJL-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Podjl decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Podjl decay],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,PodJL1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL degradation],ParameterGroup=Parameters,Parameter=k" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,PodJL2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL degradation],ParameterGroup=Parameters,Parameter=J" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jd\,PodJL-PerP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL degradation 2],ParameterGroup=Parameters,Parameter=k" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ksep\,PodJL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL degradation 2],ParameterGroup=Parameters,Parameter=H" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PodJL degradation 2],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[jsep\,PodJL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP synthesis],ParameterGroup=Parameters,Parameter=k" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,PerP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP decay],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,PerP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP degradation],ParameterGroup=Parameters,Parameter=k" value="0.010999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ksep\,PerP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP degradation],ParameterGroup=Parameters,Parameter=H" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[PerP degradation],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jsep\,PerP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ synthesis],ParameterGroup=Parameters,Parameter=v" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DivJ1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ synthesis2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ synthesis2],ParameterGroup=Parameters,Parameter=H" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ synthesis2],ParameterGroup=Parameters,Parameter=k" value="0.025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DivJ2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ synthesis2],ParameterGroup=Parameters,Parameter=J" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,DivJ-PodJL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ decay],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,DivJ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ degradation],ParameterGroup=Parameters,Parameter=k" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ksep\,divJ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ degradation],ParameterGroup=Parameters,Parameter=H" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivJ degradation],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Jsep\,DivJ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK synthesis],ParameterGroup=Parameters,Parameter=k" value="0.0023999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,DivK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK synthesis],ParameterGroup=Parameters,Parameter=J" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,DivK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK decay],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,DivK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK dephosphorylation],ParameterGroup=Parameters,Parameter=k" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,DivK_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK dephosphorylation],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JDivk_P-PodJL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK dephosphorylation],ParameterGroup=Parameters,Parameter=H" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK phosphorylation],ParameterGroup=Parameters,Parameter=k" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,DivK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK phosphorylation],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JDivk-DivJ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK phosphorylation],ParameterGroup=Parameters,Parameter=H" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CckA_P decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CckA_P decay],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CckA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CckA_P synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CckA_P synthesis],ParameterGroup=Parameters,Parameter=k" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CckA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CckA_P synthesis],ParameterGroup=Parameters,Parameter=J" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ji\,Ccka-DivK_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CpdR synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CpdR synthesis],ParameterGroup=Parameters,Parameter=k" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CpdR_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CpdR degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CpdR degradation],ParameterGroup=Parameters,Parameter=k" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,CpdR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[CpdR degradation],ParameterGroup=Parameters,Parameter=J" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,CpdR-CckA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[ParAADP synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[ParAADP synthesis],ParameterGroup=Parameters,Parameter=k" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,ParAATP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[parAADP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[parAADP degradation],ParameterGroup=Parameters,Parameter=k" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ktrans\,ParAADP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[RcdA synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[RcdA synthesis],ParameterGroup=Parameters,Parameter=k" value="0.023" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,RcdA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[RcdA synthesis],ParameterGroup=Parameters,Parameter=J" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,RcdA-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[RcdA decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[RcdA decay],ParameterGroup=Parameters,Parameter=k1" value="0.017000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,RcdA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsQ synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsQ synthesis],ParameterGroup=Parameters,Parameter=k" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,FtsQ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsQ synthesis],ParameterGroup=Parameters,Parameter=J1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,FtsQ-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsQ synthesis],ParameterGroup=Parameters,Parameter=J2" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,FtsQ\,DNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsQ decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsQ decay],ParameterGroup=Parameters,Parameter=k1" value="0.035000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsQ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ synthesis],ParameterGroup=Parameters,Parameter=k" value="0.035999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,FtsZ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ synthesis],ParameterGroup=Parameters,Parameter=J" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JiFtsZ-CtrA_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ decay],ParameterGroup=Parameters,Parameter=k1" value="0.0089999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsZ1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ degradation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ degradation 1],ParameterGroup=Parameters,Parameter=k" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsZ2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ degradation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[FtsZ degradation 2],ParameterGroup=Parameters,Parameter=k" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,FtsZ3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Zring closing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Zring closing],ParameterGroup=Parameters,Parameter=k" value="0.035000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[ks\,Zring],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z synthesis],ParameterGroup=Parameters,Parameter=k" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kZ\,open],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z synthesis],ParameterGroup=Parameters,Parameter=J" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,open],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z degrdataion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z degrdataion],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kZ\,closed1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z degrdataion],ParameterGroup=Parameters,Parameter=k2" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kZ\,closed2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z degrdataion],ParameterGroup=Parameters,Parameter=J1" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[JZ-FtsQ],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z degrdataion],ParameterGroup=Parameters,Parameter=theta1" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaZring],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z degrdataion],ParameterGroup=Parameters,Parameter=theta2" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[thethaParAADP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[Z degrdataion],ParameterGroup=Parameters,Parameter=J2" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[Ja\,closed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK_P decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Reactions[DivK_P decay],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Li2009- Assymetric Caulobacter cell cycle,Vector=Values[kd\,DivK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
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
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2.4088563428000002e+19 3.9746129656200004e+20 1.2044281714000001e+20 6.0221408570000002e+20 3.1917346542100002e+20 4.8177126856000004e+19 4.6972698684600005e+20 3.3121774713500002e+20 5.4199267712999997e+19 9.0332112855000007e+19 4.5768270513200005e+20 3.9746129656200004e+20 4.4563842341799998e+20 6.0221408570000002e+20 3.9143915570500003e+20 6.0221408570000002e+20 1.2044281714000001e+20 2.0475278913800002e+20 0 0 6.3232478998500003e+20 6.0221408570000002e+20 2.4088563428000002e+19 3.0110704285000004e+19 0 0 1.2044281714e+21 7.8287831141000007e+20 6.0221408570000002e+20 6.0221408570000002e+20 1 0 0.015900000000000001 0.14000000000000001 0.002 0.25 0.025000000000000001 0.095000000000000001 0.055 0.021999999999999999 0.0030999999999999999 0.0022000000000000001 0.0070000000000000001 0.01 0.0064999999999999997 0.089999999999999997 0.040000000000000001 0.071999999999999995 0.070000000000000007 0.40000000000000002 0.40000000000000002 0.40000000000000002 0.40000000000000002 0.042999999999999997 0.050000000000000003 0.002 0.29999999999999999 0.040000000000000001 0.02 0.010999999999999999 0.002 0.025000000000000001 0.002 0.29999999999999999 0.0023999999999999998 0.002 0.14999999999999999 0.59999999999999998 0.050000000000000003 0.20000000000000001 0.59999999999999998 0.5 0.5 0.80000000000000004 0.023 0.017000000000000001 0.059999999999999998 0.035000000000000003 0.035999999999999997 0.0089999999999999993 0.02 0.29999999999999999 0.035000000000000003 0.80000000000000004 0.0001 1.6000000000000001 0.40000000000000002 0.45000000000000001 0.55000000000000004 0.59999999999999998 0.5 0.40000000000000002 0.59999999999999998 0.29999999999999999 0.5 0.94999999999999996 0.94999999999999996 0.94999999999999996 0.94999999999999996 0.59999999999999998 0.45000000000000001 0.29999999999999999 0.29999999999999999 0.13 0.29999999999999999 0.059999999999999998 0.29999999999999999 0.29999999999999999 0.29999999999999999 0.80000000000000004 0.40000000000000002 0.5 0.050000000000000003 0.69999999999999996 0.01 0.80000000000000004 0.050000000000000003 0.5 0.65000000000000002 0.65000000000000002 0.050000000000000003 0.29999999999999999 0.29999999999999999 0.050000000000000003 0.20000000000000001 0.375 0.625 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="4700"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="470"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
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
  <GUI>
  </GUI>
  <SBMLReference file="Li2009.xml">
    <SBMLMap SBMLid="Caulobacter" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="CckA_P" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="CckA_P_decay" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="CckA_P_synthesis" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="CckA_tot" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="CcrM" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="CcrM_decay" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="CcrM_synthesis" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Count" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="CpdR" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="CpdR_degradation" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="CpdR_synthesis" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="CpdR_tot" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="CtrA" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="CtrA_P" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="CtrA_P_decay" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="CtrA_P_degradation" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="CtrA_decay" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="CtrA_degradation" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="CtrA_dephosphorylation" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="CtrA_phosphorylation" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="CtrA_synthesis_1" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="CtrA_synthesis_2" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="DNA" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="DNA_synthesis" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="DivJ" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="DivJ_decay" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="DivJ_degradation" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="DivJ_synthesis" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="DivJ_synthesis2" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="DivK" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="DivK_P" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="DivK_P_decay" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="DivK_decay" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="DivK_dephosphorylation" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="DivK_phosphorylation" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="DivK_synthesis" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="DnaA" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="DnaA_decay" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="DnaA_synthesis" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="DnaA_synthesis_2" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="Elong" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="Elong_reset_by_count" COPASIkey="Event_9"/>
    <SBMLMap SBMLid="Elongation" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="FtsQ" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="FtsQ_decay" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="FtsQ_synthesis" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="FtsZ" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="FtsZ_decay" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="FtsZ_degradation_1" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="FtsZ_degradation_2" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="FtsZ_synthesis" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="GcrA" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="GcrA_decay" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="GcrA_synthesis" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="H" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="I" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="Inermediate_synthesis" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="Ini" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="Ini_equal_0_05Count" COPASIkey="Event_7"/>
    <SBMLMap SBMLid="Initiation_of_replication" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="JDivk_DivJ" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="JDivk_P_PodJL" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="JZ_FtsQ" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="Ja_CpdR_CckA_P" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="Ja_CtrA_CtrA_P" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="Ja_DivK" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="Ja_Dna_CtrA_P" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="Ja_FtsQ_CtrA_P" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="Ja_FtsQ_DNA" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="Ja_RcdA_CtrA_P" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="Ja_closed" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="Ja_i_CtrA_P" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="Ja_open" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="Jd_CtrA_DivK_P" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="Jd_PodJL_PerP" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="JiDnaA_GcrA" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="JiFtsZ_CtrA_P" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="Ji_Ccka_DivK_P" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="Ji_CtrA_CtrA_P" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="Ji_DivJ_PodJL" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="Ji_GcrA_CtrA" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="Ji_PodJL_CtrA_P" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="Jm_Cori" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="Jm_ctrA" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="Jm_ftsZ" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="Jsep_DivJ" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="Jsep_PerP" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="ParAADP" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="ParAADP_synthesis" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="ParA_tot" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="PccrM" COPASIkey="ModelValue_189"/>
    <SBMLMap SBMLid="PctrA" COPASIkey="ModelValue_190"/>
    <SBMLMap SBMLid="Pelong" COPASIkey="ModelValue_188"/>
    <SBMLMap SBMLid="PerP" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="PerP_decay" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="PerP_degradation" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="PerP_synthesis" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="PftsZ" COPASIkey="ModelValue_191"/>
    <SBMLMap SBMLid="PodJL" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="PodJL_degradation" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="PodJL_degradation_2" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="PodJL_synthesis" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="Podjl_decay" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="RcdA" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="RcdA_decay" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="RcdA_synthesis" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="Z" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="Z_degrdataion" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="Z_equals_0" COPASIkey="Event_8"/>
    <SBMLMap SBMLid="Z_synthesis" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="Zring" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Zring_closing" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="function_1k_2M" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_dor_DivJ_2" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_for_1J_1k_1m" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_for_1k_1J_2M__4" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_for_1k_1_M1_M2" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="function_for_1k_1m" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_for_CckA" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_for_CpdR_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_for_CpdR_2" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_for_DivJ1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_for_DivK2" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_for_Divk_1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_for_DnaA_1k_1J_2M" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_for_DnaA_1k_1K_2M__2" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_for_FtsQ" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="function_for_FtsZ_synthesis" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="function_for_H__PodJL_and_PerP" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_for_Ini" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_for_ParAADP_2" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="function_for_Z_deg" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="function_for_Z_synthesis" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="function_for_deg_of_CtrA_and_CtrA_P" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_for_h___" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_with_1k_1J_2M" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_with_1k_1J_2M__2" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_with_1k_1J_3M" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="hccrM" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="hccrM_reset_by_Elong" COPASIkey="Event_12"/>
    <SBMLMap SBMLid="hcori" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="hcori_reset_by_Elong" COPASIkey="Event_10"/>
    <SBMLMap SBMLid="hctrA" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="hctrA_reset_by_Elong" COPASIkey="Event_11"/>
    <SBMLMap SBMLid="hftsZ" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="hftsZ_reset_by_Elong" COPASIkey="Event_13"/>
    <SBMLMap SBMLid="intermediate_decay" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="jd_CtrA_CpdR" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="jd_CtrA_RcdA" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="jm_ccrM" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="jsep_PodJL" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="kZ_closed1" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="kZ_closed2" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="kZ_open" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="ka_Ini" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="kd_CcrM" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="kd_CtrA1" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="kd_CtrA2" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="kd_DivJ" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="kd_DivK" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="kd_DnaA" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="kd_FtsQ" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="kd_FtsZ1" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="kd_FtsZ2" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="kd_FtsZ3" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="kd_GcrA" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="kd_I" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="kd_PerP" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="kd_PodJL1" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="kd_PodJL2" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="kd_RcdA" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="kelong" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="km_Cori" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="km_ccrM" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="km_ctrA" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="km_ftsz" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="ks_CcrM" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="ks_CtrA_P1" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="ks_CtrA_P2" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="ks_DivJ1" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="ks_DivJ2" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="ks_DivK" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="ks_DnaA1" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="ks_DnaA2" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="ks_FtsQ" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="ks_FtsZ" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="ks_GcrA" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="ks_I" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="ks_PerP" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="ks_PodJL" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="ks_RcdA" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="ks_Zring" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="ksep_PerP" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="ksep_PodJL" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="ksep_divJ" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="ktrans_CckA" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="ktrans_CckA_P" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="ktrans_CpdR" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="ktrans_CpdR_P" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="ktrans_CtrA" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="ktrans_CtrA_P" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="ktrans_DivK" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="ktrans_DivK_P" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="ktrans_ParAADP" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="ktrans_ParAATP" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="methylation_ccrM" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="methylation_cori" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="methylation_ctrA" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="methylation_ftsZ" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="parAADP_degradation" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="thethaCori" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="thethaCtrA_P" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="thethaDnaA" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="thethaGcrA" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="thethaParAADP" COPASIkey="ModelValue_187"/>
    <SBMLMap SBMLid="thethaZring" COPASIkey="ModelValue_186"/>
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
