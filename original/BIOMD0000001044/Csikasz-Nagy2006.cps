<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.34 (Build 251) (http://www.copasi.org) at 2021-11-22T16:17:50Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="34" versionDevel="251" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Mass_Action_0" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k1" order="0" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Mass_Action_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*S1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_263" name="k1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_262" name="S1" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Michaelis-Menten" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*S1*M1/(J1+S1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_250" name="M1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_261" name="J1" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_265" name="k1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_266" name="S1" order="3" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="GK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        2*A4*A1/(A2-A1+A3*A2+A4*A1+((A2-A1+A3*A2+A4*A1)^2-4*(A2-A1)*A4*A1)^(1/2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="A1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_269" name="A2" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_268" name="A3" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_267" name="A4" order="3" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Mass_Action_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*S1*S2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="k1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_273" name="S1" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_272" name="S2" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for Mass accumulation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_0(mu*Mass*(1-Mass/MaxMass))/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="Mass" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_275" name="MaxMass" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_277" name="mu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for Synthesis of MPF" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vsb/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="Vsb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="cell" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for Deg. of MPF" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdb,CycB)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="CycB" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="Vdb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for activation of MPF from pB by Cdc25" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(V25,pB)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="V25" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_283" name="pB" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for inactivation of MPFby Wee1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vwee,CycB)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="CycB" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="Vwee" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for assoc. of MPF with CKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_2(kassb,CycB,CKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="CKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="CycB" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_292" name="kassb" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for dissoc1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(kdissb,BCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="BCKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_294" name="kdissb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for deg. of pB" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdb,pB)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="Vdb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_293" name="pB" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for assoc. of pB with CKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_2(kassb,pB,CKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="CKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_299" name="kassb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="pB" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for dissoc2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(kdissb,pBCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_305" name="kdissb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="pBCKI" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for Cdc25 action" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(V25,pBCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="V25" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_303" name="pBCKI" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for Wee1 action" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vwee,BCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="BCKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="Vwee" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for Deg. of CycB moeity  in BCKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdb,BCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="BCKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_313" name="Vdb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for Deg. of CKI moeity in BCKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdi,BCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="BCKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="Vdi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for Deg. of pB moeity in pBCKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdb,pBCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="Vdb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_318" name="pBCKI" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for Deg. of CKI moeity in pBCKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdi,pBCKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="Vdi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_321" name="pBCKI" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for Synthesis of CKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vsi/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="Vsi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="cell" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for Deg. of CKI" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdi,CKI)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="CKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="Vdi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for Assoc. of CKI with CycA" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_2(kassa,CKI,CycA)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="CKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_330" name="CycA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_332" name="kassa" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for dissoc3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(kdissa,TriA)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="TriA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_334" name="kdissa" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for Deg. of CKI moeity in TriA" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdi,TriA)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="TriA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="Vdi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for Deg. of CycA moeity in TriA" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vda,TriA)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="TriA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="Vda" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for Assoc. of CKI with CycE" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_2(kasse,CKI,CycE)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="CKI" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_343" name="CycE" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_345" name="kasse" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for dissoc4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(kdisse,TriE)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_349" name="TriE" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_347" name="kdisse" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for Deg. of CKI moeity in TriE" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vdi,TriE)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="TriE" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="Vdi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for Deg. of CycE moeity in TriE" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_70">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vde,TriE)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="TriE" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_353" name="Vde" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for Synthesis of CycA by TFE" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_71">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vsa/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="Vsa" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="cell" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for Deg. of CycA" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_72">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vda,CycA)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="CycA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="Vda" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for Synthesis of CycE by TFE" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_73">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vse/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="Vse" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="cell" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for Deg. of CycE" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_74">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(Vde,CycE)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="CycE" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="Vde" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="cell" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for activation of APCP" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_75">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Michaelis-Menten"(CycB,Jaie,kaie,APC)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="APC" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="CycB" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="Jaie" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_369" name="kaie" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for inactivation1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_76">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Michaelis-Menten"(1,Jiie,kiie,APCP)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="APCP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_373" name="Jiie" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_371" name="kiie" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for Synthesis of Cdc20i" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_77">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_0(ks20a+ks20b*CycB^n20/(J20^n20+CycB^n20))/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="CycB" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="J20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_370" name="ks20a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="ks20b" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="n20" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for Deg. of Cdc20i" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_78">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(kd20,Cdc20i)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="Cdc20i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_384" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_383" name="kd20" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for activation of Cdc20i" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_79">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Michaelis-Menten"(APCP,Ja20,ka20,Cdc20i)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="APCP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_381" name="Cdc20i" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="Ja20" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_387" name="ka20" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for inactivation2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_80">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Michaelis-Menten"(1,Ji20,ki20,Cdc20A)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_392" name="Cdc20A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_391" name="Ji20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_389" name="ki20" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_81">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Mass_Action_1(kd20,Cdc20A)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_395" name="Cdc20A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_394" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_393" name="kd20" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for activation of Cdh1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_82">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Michaelis-Menten"(Vah1,Jah1,1,Cdh1i)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="Cdh1i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="Jah1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="Vah1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="cell" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for inactivation  of Cdh1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_83">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Michaelis-Menten"(Vih1,Jih1,1,Cdh1)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_402" name="Cdh1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_401" name="Jih1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="Vih1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="cell" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Csikasz-Nagy2006 - Mammalian Cell Cycle model" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0007049"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:40674"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:16581849"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2008-11-28T15:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>ktiwari@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Krishna</vCard:Family>
            <vCard:Given>Tiwari</vCard:Given>
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
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
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
            <vCard:EMAIL>csikasz@cosbi.eu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Csikasz-Nagy</vCard:Family>
                <vCard:Given>Attila</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Trento Centre for Computational and Systems Biology</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
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
            <vCard:EMAIL>csikasz@cosbi.eu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Csikasz-Nagy</vCard:Family>
                <vCard:Given>Attila</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Trento Centre for Computational and Systems Biology</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
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
            <vCard:EMAIL>csikasz@cosbi.eu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Csikasz-Nagy</vCard:Family>
                <vCard:Given>Attila</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Trento Centre for Computational and Systems Biology</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
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
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
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
            <vCard:EMAIL>csikasz@cosbi.eu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Csikasz-Nagy</vCard:Family>
                <vCard:Given>Attila</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Trento Centre for Computational and Systems Biology</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-07-20T11:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-07-20T11:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-07-20T11:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-07-20T11:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL3897771820"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:reactome:R-HSA-1640170"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C12958"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This model originates from the      <a href="http://www.itb.cnr.it/cellcycle/">Cell Cycle Database</a>
          . It is described in:      <br />
    <b>Analysis of a generic model of eukaryotic cell-cycle regulation.</b>
    <em>Csikász-Nagy A , Battogtokh D , Chen KC , Novák B , Tyson JJ</em>
          Biophys. J. [2006 Jun],90(12 ):4361-79      <br />
          PMID:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/16581849">16581849</a>
    <br />
          Abstract:      <br />
          We propose a protein interaction network for the regulation of DNA synthesis and mitosis that emphasizes the universality of the regulatory system among eukaryotic cells. The idiosyncrasies of cell cycle regulation in particular organisms can be attributed, we claim, to specific settings of rate constants in the dynamic network of chemical reactions. The values of these rate constants are determined ultimately by the genetic makeup of an organism. To support these claims, we convert the reaction mechanism into a set of governing kinetic equations and provide parameter values (specific to budding yeast, fission yeast, frog eggs, and mammalian cells) that account for many curious features of cell cycle regulation in these organisms. Using one-parameter bifurcation diagrams, we show how overall cell growth drives progression through the cell cycle, how cell-size homeostasis can be achieved by two different strategies, and how mutations remodel bifurcation diagrams and create unusual cell-division phenotypes. The relation between gene dosage and phenotype can be summarized compactly in two-parameter bifurcation diagrams. Our approach provides a theoretical framework in which to understand both the universality and particularity of cell cycle regulation, and to construct, in modular fashion, increasingly complex models of the networks controlling cell growth and division.      </p>
    <br />
    <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p>
    <br />
    <p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" class="external">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a></p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C12958" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="APC" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9H1A4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[APCT],Reference=Value>-&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[APCp],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="APCp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9H1A4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="BCKI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q22197" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Cdc14" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q00684" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Cdc20A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:NCIT:C45329" />
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q12834" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Cdc20i" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45422" />
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q12834" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Cdc20T" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:unigene:" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20i],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Cdc25p" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P30304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          GK(&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ka25a],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ka25b],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ki25a],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ki25b],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc14],Reference=Concentration>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ja25],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ji25],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Cdh1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9UM11" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Cdh1i" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45422" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9UM11" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Cdh1T],Reference=Value>-&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="CKI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P46527" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="CKIT" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P46527" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CKI],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[BCKI],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pBCKI],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriA],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriE],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="CycA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P20248" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="CycAT" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20248" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriA],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="CycB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P14635" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="CycBT" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P14635" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pB],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[BCKI],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pBCKI],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="CycD" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P24385" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[CycD0],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="CycE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P24864" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="CycET" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P24864" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriE],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Mass" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:is rdf:resource="urn:miriam:pato:PATO:0045030" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="pB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P06400" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="pBCKI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P06400" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P46527" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="preMPF" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:uniprot:Q8NHZ8" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pB],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pBCKI],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="TFB" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q5AFP3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          GK(&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kafb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kifb],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jafb],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jifb],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="TFE" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q01094" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          GK(&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vatf],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vitf],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jatf],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jitf],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="TFI" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9UUB7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          GK(&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kafi],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc14],Reference=Concentration>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kifi],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kifib],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jafi],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jifi],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="TriA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P20248" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P46527" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="TriB" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06400" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P46527" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[BCKI],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pBCKI],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="TriE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24864" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P46527" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Wee1" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P30291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          GK(&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kaweea],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kaweeb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc14],Reference=Concentration>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kiweea],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kiweeb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jawee],Reference=Value>,&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jiwee],Reference=Value>)
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="V25" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[k25a],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[k25b],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc25p],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Vah1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kah1a],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kah1b],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc14],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Vatf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katf],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katfa],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katfe],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katfd],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycD],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Vda" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdaa],Reference=Value>+(&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdab],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdac],Reference=Value>)*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdac],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20i],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Vdb" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdb],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdbh],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdbc],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Vde" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kde],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdee],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdea],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdeb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Vdi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdi],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdia],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdib],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdie],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdid],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycD],Reference=Concentration>)/(1+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[k14di],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc14],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Vih1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1a],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1b],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1e],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1d],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycD],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Vitf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kitf],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kitfa],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kitfb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Vsa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksaa],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksab],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFE],Reference=Concentration>)*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Vsb" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksba],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksbb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFB],Reference=Concentration>)*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Vse" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksea],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kseb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFE],Reference=Concentration>)*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Vsi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksia],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksib],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFI],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Vwee" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kweea],Reference=Value>+&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kweeb],Reference=Value>*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Wee1],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="APCT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Cdh1T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="CycD0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="J20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Ja20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Ja25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Jafb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Jafi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Jah1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Jaie" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Jatf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Jawee" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Ji20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Ji25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Jifb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Jifi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Jih1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Jiie" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Jitf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Jiwee" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k14di" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k25b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k25a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="ka20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="ka25b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="ka25a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kafb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kafi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kah1b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kah1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kaie" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kassa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kassb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="kasse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="katf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="katfa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="katfd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="katfe" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kaweeb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="kaweea" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="kd20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kdab" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="kdaa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kdac" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="kdb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="kdbc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="kdbh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="kde" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kdea" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="kdeb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="kdee" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="kdi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="kdia" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="kdib" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="kdid" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="kdie" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="kdissa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="kdissb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="kdisse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="KEZ" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="ki20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="ki25b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="ki25a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="kifb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="kifi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="kifib" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="kih1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="kih1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="kih1b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="kih1d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="kih1e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="kiie" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="kitf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kitfa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="kitfb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="kiweeb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="kiweea" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="ks20b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="ks20a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="ksab" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="ksaa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="ksbb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="ksba" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="kseb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="ksea" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="ksib" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="ksia" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="kweeb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="kweea" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="MaxMass" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="mu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="n20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Mass accumulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:NCIT:C16402" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4970" name="MaxMass" value="10000"/>
          <Constant key="Parameter_4969" name="mu" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Synthesis of CycB" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="Vsb" value="0.0428596"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Deg. of MPF" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4967" name="Vdb" value="2.06953"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="activation of MPF from pB by Cdc25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000656" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4966" name="V25" value="0.511026"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="inactivation of MPFby Wee1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000665" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4965" name="Vwee" value="0.208806"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Assoc. of MPF with CKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000177" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4964" name="kassb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="dissoc1 of BCKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="kdissb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Deg. of pB" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4962" name="Vdb" value="2.06953"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Assoc. of pB with CKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000177" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="kassb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="dissoc2 of pBCKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4960" name="kdissb" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Cdc25 action" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4959" name="V25" value="0.511026"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="BCKI phosphophorylation by Wee1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4958" name="Vwee" value="0.208806"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Deg. of CycB moeity  in BCKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4957" name="Vdb" value="2.06953"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Deg. of CKI moeity in BCKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4956" name="Vdi" value="2.07193"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Deg. of pB moeity in pBCKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4955" name="Vdb" value="2.06953"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Deg. of CKI moeity in pBCKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4954" name="Vdi" value="2.07193"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Synthesis of CKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4953" name="Vsi" value="1.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Deg. of CKI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4952" name="Vdi" value="2.07193"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Assoc. of CKI with CycA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000177" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4951" name="kassa" value="25"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="dissoc3 of TriA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4950" name="kdissa" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Deg. of CKI moeity in TriA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4949" name="Vdi" value="2.07193"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Deg. of CycA moeity in TriA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4948" name="Vda" value="1.34117"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Assoc. of CKI with CycE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000177" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4947" name="kasse" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="dissoc4 of TriE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4946" name="kdisse" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Deg. of CKI moeity in TriE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4945" name="Vdi" value="2.07193"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Deg. of CycE moeity in TriE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4944" name="Vde" value="0.106151"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Synthesis of CycA by TFE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4943" name="Vsa" value="0.00121724"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Deg. of CycA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4942" name="Vda" value="1.34117"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Synthesis of CycE by TFE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4941" name="Vse" value="0.0205063"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Deg. of CycE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4940" name="Vde" value="0.106151"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="activation of APCP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000216" />
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
          <Constant key="Parameter_4939" name="Jaie" value="0.01"/>
          <Constant key="Parameter_4938" name="kaie" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="inactivation of APCp" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000665" />
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
          <Constant key="Parameter_4937" name="Jiie" value="0.01"/>
          <Constant key="Parameter_4936" name="kiie" value="0.18"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Synthesis of Cdc20i" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="J20" value="1"/>
          <Constant key="Parameter_4934" name="ks20a" value="0"/>
          <Constant key="Parameter_4933" name="ks20b" value="0.15"/>
          <Constant key="Parameter_4932" name="n20" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Deg. of Cdc20i" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4931" name="kd20" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="activation of Cdc20i" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000656" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4930" name="Ja20" value="0.005"/>
          <Constant key="Parameter_4929" name="ka20" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="inactivation of Cdc20A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000665" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4928" name="Ji20" value="0.005"/>
          <Constant key="Parameter_4927" name="ki20" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Deg.of CDC20A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4926" name="kd20" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="activation of Cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4925" name="Jah1" value="0.01"/>
          <Constant key="Parameter_4924" name="Vah1" value="2.49205"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="inactivation  of Cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000665" />
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
          <Constant key="Parameter_4923" name="Jih1" value="0.01"/>
          <Constant key="Parameter_4922" name="Vih1" value="0.17659"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Event" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration>-&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[KEZ],Reference=Value> lt 0
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass]" targetKey="Metabolite_19">
            <Expression>
              0.5*&lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration>
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
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[APC]" value="0.32837343215942405" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[APCp]" value="0.67162656784057595" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[BCKI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc14]" value="0.66058671474456798" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A]" value="0.66058671474456798" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20i]" value="0.018553527072072001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20T]" value="0.67914024181664001" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc25p]" value="0.1002052901971687" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdh1]" value="0.99923574924469005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdh1i]" value="0.00076425075530994757" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CKI]" value="0.29540768265724199" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CKIT]" value="0.62428781390190102" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA]" value="0.0099404454231262207" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycAT]" value="0.027094244956970222" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB]" value="0.16684137284755701" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycBT]" value="0.17665624339133496" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycD]" value="0.058710843324661505" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE]" value="0.077605128288269001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycET]" value="0.38933145999908397" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass]" value="1.17421686649323" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pB]" value="0.0098148705437779392" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pBCKI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[preMPF]" value="0.0098148705437779392" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFB]" value="0.88335289130930195" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFE]" value="0.04146576229483178" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFI]" value="0.36075839818425087" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriA]" value="0.017153799533844001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriB]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriE]" value="0.31172633171081499" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Wee1]" value="0.94403096853424295" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[V25]" value="0.51102645098584354" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vah1]" value="2.4920535016059882" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vatf]" value="0.2179172277450569" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vda]" value="1.341173429489136" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdb]" value="2.0695301699638371" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vde]" value="0.10615142196416852" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdi]" value="2.0719347327947615" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vih1]" value="0.17658997476100916" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vitf]" value="0.26767818182706832" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsa]" value="0.0012172449367147625" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsb]" value="0.042859604586160595" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vse]" value="0.02050633220927859" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsi]" value="1.8" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vwee]" value="0.20880619370684858" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[APCT]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Cdh1T]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[CycD0]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[J20]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ja20]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ja25]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jafb]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jafi]" value="88" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jah1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jaie]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jatf]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jawee]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ji20]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ji25]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jifb]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jifi]" value="88" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jih1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jiie]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jitf]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jiwee]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[k14di]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[k25b]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[k25a]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ka20]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ka25b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ka25a]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kafb]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kafi]" value="88" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kah1b]" value="3.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kah1a]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kaie]" value="0.070000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kassa]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kassb]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kasse]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katf]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katfa]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katfd]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[katfe]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kaweeb]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kaweea]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kd20]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdab]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdaa]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdac]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdb]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdbc]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdbh]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kde]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdea]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdeb]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdee]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdi]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdia]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdib]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdid]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdie]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdissa]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdissb]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdisse]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[KEZ]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ki20]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ki25b]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ki25a]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kifb]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kifi]" value="88" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kifib]" value="88" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1a]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1d]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kih1e]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kiie]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kitf]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kitfa]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kitfb]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kiweeb]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kiweea]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ks20b]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ks20a]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksab]" value="0.025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksaa]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksbb]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksba]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kseb]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksea]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksib]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ksia]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kweeb]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kweea]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[MaxMass]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[mu]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[n20]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Mass accumulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Mass accumulation],ParameterGroup=Parameters,Parameter=MaxMass" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[MaxMass],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Mass accumulation],ParameterGroup=Parameters,Parameter=mu" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CycB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CycB],ParameterGroup=Parameters,Parameter=Vsb" value="0.042859604586160595" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of MPF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of MPF],ParameterGroup=Parameters,Parameter=Vdb" value="2.0695301699638371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of MPF from pB by Cdc25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of MPF from pB by Cdc25],ParameterGroup=Parameters,Parameter=V25" value="0.51102645098584354" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[V25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of MPFby Wee1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of MPFby Wee1],ParameterGroup=Parameters,Parameter=Vwee" value="0.20880619370684858" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vwee],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of MPF with CKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of MPF with CKI],ParameterGroup=Parameters,Parameter=kassb" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kassb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc1 of BCKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc1 of BCKI],ParameterGroup=Parameters,Parameter=kdissb" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdissb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of pB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of pB],ParameterGroup=Parameters,Parameter=Vdb" value="2.0695301699638371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of pB with CKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of pB with CKI],ParameterGroup=Parameters,Parameter=kassb" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kassb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc2 of pBCKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc2 of pBCKI],ParameterGroup=Parameters,Parameter=kdissb" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdissb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Cdc25 action]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Cdc25 action],ParameterGroup=Parameters,Parameter=V25" value="0.51102645098584354" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[V25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[BCKI phosphophorylation by Wee1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[BCKI phosphophorylation by Wee1],ParameterGroup=Parameters,Parameter=Vwee" value="0.20880619370684858" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vwee],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycB moeity  in BCKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycB moeity  in BCKI],ParameterGroup=Parameters,Parameter=Vdb" value="2.0695301699638371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in BCKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in BCKI],ParameterGroup=Parameters,Parameter=Vdi" value="2.0719347327947615" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of pB moeity in pBCKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of pB moeity in pBCKI],ParameterGroup=Parameters,Parameter=Vdb" value="2.0695301699638371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in pBCKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in pBCKI],ParameterGroup=Parameters,Parameter=Vdi" value="2.0719347327947615" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CKI],ParameterGroup=Parameters,Parameter=Vsi" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI],ParameterGroup=Parameters,Parameter=Vdi" value="2.0719347327947615" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of CKI with CycA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of CKI with CycA],ParameterGroup=Parameters,Parameter=kassa" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kassa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc3 of TriA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc3 of TriA],ParameterGroup=Parameters,Parameter=kdissa" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdissa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in TriA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in TriA],ParameterGroup=Parameters,Parameter=Vdi" value="2.0719347327947615" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycA moeity in TriA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycA moeity in TriA],ParameterGroup=Parameters,Parameter=Vda" value="1.341173429489136" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of CKI with CycE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Assoc. of CKI with CycE],ParameterGroup=Parameters,Parameter=kasse" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kasse],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc4 of TriE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[dissoc4 of TriE],ParameterGroup=Parameters,Parameter=kdisse" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kdisse],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in TriE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CKI moeity in TriE],ParameterGroup=Parameters,Parameter=Vdi" value="2.0719347327947615" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycE moeity in TriE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycE moeity in TriE],ParameterGroup=Parameters,Parameter=Vde" value="0.10615142196416852" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CycA by TFE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CycA by TFE],ParameterGroup=Parameters,Parameter=Vsa" value="0.0012172449367147625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycA],ParameterGroup=Parameters,Parameter=Vda" value="1.341173429489136" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CycE by TFE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of CycE by TFE],ParameterGroup=Parameters,Parameter=Vse" value="0.02050633220927859" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vse],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of CycE],ParameterGroup=Parameters,Parameter=Vde" value="0.10615142196416852" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of APCP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of APCP],ParameterGroup=Parameters,Parameter=Jaie" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jaie],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of APCP],ParameterGroup=Parameters,Parameter=kaie" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kaie],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of APCp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of APCp],ParameterGroup=Parameters,Parameter=Jiie" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jiie],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of APCp],ParameterGroup=Parameters,Parameter=kiie" value="0.17999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kiie],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of Cdc20i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of Cdc20i],ParameterGroup=Parameters,Parameter=J20" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[J20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of Cdc20i],ParameterGroup=Parameters,Parameter=ks20a" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ks20a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of Cdc20i],ParameterGroup=Parameters,Parameter=ks20b" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ks20b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Synthesis of Cdc20i],ParameterGroup=Parameters,Parameter=n20" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[n20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of Cdc20i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg. of Cdc20i],ParameterGroup=Parameters,Parameter=kd20" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kd20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of Cdc20i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of Cdc20i],ParameterGroup=Parameters,Parameter=Ja20" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ja20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of Cdc20i],ParameterGroup=Parameters,Parameter=ka20" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ka20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of Cdc20A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of Cdc20A],ParameterGroup=Parameters,Parameter=Ji20" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Ji20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation of Cdc20A],ParameterGroup=Parameters,Parameter=ki20" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[ki20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg.of CDC20A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[Deg.of CDC20A],ParameterGroup=Parameters,Parameter=kd20" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[kd20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of Cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of Cdh1],ParameterGroup=Parameters,Parameter=Jah1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jah1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[activation of Cdh1],ParameterGroup=Parameters,Parameter=Vah1" value="2.4920535016059882" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vah1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation  of Cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation  of Cdh1],ParameterGroup=Parameters,Parameter=Jih1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Jih1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Reactions[inactivation  of Cdh1],ParameterGroup=Parameters,Parameter=Vih1" value="0.17658997476100916" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vih1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
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
      <StateTemplateVariable objectReference="Compartment_0"/>
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
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0.29540768265724199 0.16684137284755701 0 0.0099404454231262207 0.077605128288269001 0.018553527072072001 0.0098148705437779392 0 0.99923574924469005 0.67162656784057595 0.66058671474456798 0.017153799533844001 0.31172633171081499 1.17421686649323 0.32837343215942405 0.66058671474456798 0.67914024181664001 0.1002052901971687 0.00076425075530994757 0.62428781390190102 0.027094244956970222 0.17665624339133496 0.058710843324661505 0.38933145999908397 0.0098148705437779392 0.88335289130930195 0.04146576229483178 0.36075839818425087 0 0.94403096853424295 0.51102645098584354 2.4920535016059882 0.2179172277450569 1.341173429489136 2.0695301699638371 0.10615142196416852 2.0719347327947615 0.17658997476100916 0.26767818182706832 0.0012172449367147625 0.042859604586160595 0.02050633220927859 1.8 0.20880619370684858 1 1 1 0.050000000000000003 1 0.0050000000000000001 0.10000000000000001 0.10000000000000001 88 0.01 0.01 0.01 0.050000000000000003 0.0050000000000000001 0.10000000000000001 0.10000000000000001 88 0.01 0.01 0.01 0.050000000000000003 0 5 0.01 0.5 1 0 1 88 3.5 0.17999999999999999 0.070000000000000007 25 0 50 0 0.29999999999999999 3 0.5 0 0.29999999999999999 0.14999999999999999 2 0.02 0 0.0050000000000000001 0.10000000000000001 2 0.01 0.5 0.5 0.10000000000000001 0.80000000000000004 5 5 0 5 1 0 1 0.20000000000000001 0.25 0 0.29999999999999999 0.10000000000000001 88 88 0 0.20000000000000001 1 0 0.10000000000000001 0.17999999999999999 0.25 0.10000000000000001 0.10000000000000001 1 0 0.14999999999999999 0 0.025000000000000001 0 0.029999999999999999 0.01 0.17999999999999999 0.01 0 1.8 0.20000000000000001 0.02 10000 0.0050000000000000001 1 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="50000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="500"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
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
            <Parameter name="Number of steps" type="unsignedInteger" value="100"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0.10000000000000001"/>
            <Parameter name="Maximum" type="float" value="4"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
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
        <Parameter name="Duration" type="float" value="100"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[APC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[APC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[APCP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[APCp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BCKI]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[BCKI],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdc14]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc14],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdc20A]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20A],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdc20i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdc20T]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc20T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdc25P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdc25p],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdh1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdh1i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdh1i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CKI]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CKI],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CKIT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycBT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycBT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycE]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycET]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycET],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mass]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pBCKI]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[pBCKI],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[preMPF]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[preMPF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TFB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TFE]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TFI]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TFI],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TriA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TriB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TriE]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[TriE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wee1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Wee1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[V25]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[V25],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vah1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vah1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vatf]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vatf],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vda]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vda],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vdb]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdb],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vde]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vde],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vdi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vdi],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vih1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vih1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vitf]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vitf],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vsa]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsa],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vsb]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsb],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vse]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vse],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vsi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vsi],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vwee]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Values[Vwee],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Cdh1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Cdh1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycE]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mass]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CKIT]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Bif" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CycB]|[Mass]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration"/>
            <ChannelSpec cn="CN=Root,Model=Csikasz-Nagy2006 - Mammalian Cell Cycle model,Vector=Compartments[cell],Vector=Metabolites[CycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="1151.4868933150692" height="1169.3277361492244"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="912.73439054792777" y="928.88393550975275"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_29">
          <BoundingBox>
            <Position x="305.11756217206738" y="581.46770727311355"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="Metabolite_25">
          <BoundingBox>
            <Position x="94.01365849610238" y="601.53139824120149"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="774.95893721687389" y="897.53347401255098"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="717.52684423364576" y="243.84433319020772"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="262.47875445527666" y="26.34932165283664"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="757.61750885469166" y="944.53983860953394"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="406.08829954544484" y="607.1981838256097"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="415.64483468461697" y="1022.4939903170773"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="642.58262752156384" y="876.99767049366108"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="MetabGlyph" metabolite="Metabolite_28">
          <BoundingBox>
            <Position x="583.90465174401413" y="1041.3245771576062"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="MetabGlyph" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="819.50675974700766" y="126.38025218981403"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="MetabGlyph" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="1025.7862960963143" y="58.507008019985598"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="MetabGlyph" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="413.93403607373352" y="534.55246995271"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="MetabGlyph" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="382.75321268805811" y="41.057024239384731"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="MetabGlyph" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="1079.8256484418939" y="973.90732811437169"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="MetabGlyph" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="859.04496577887824" y="414.46822251813933"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="MetabGlyph" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="577.70311578505994" y="856.73305355882303"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="MetabGlyph" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="423.71615176424342" y="87.774597237579655"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="MetabGlyph" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="299.99718410113024" y="566.66330598751108"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="MetabGlyph" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="82.554170316143995" y="228.00701234015665"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="MetabGlyph" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="126.51596850117511" y="469.39959225459069"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="MetabGlyph" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="1026.1846772171364" y="331.27563662647293"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="MetabGlyph" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="204.60950405796027" y="256.75157450712362"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="MetabGlyph" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="810.78238148390824" y="1088.0659165270908"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="MetabGlyph" metabolite="Metabolite_22">
          <BoundingBox>
            <Position x="371.97831333819335" y="1006.7008095571809"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="MetabGlyph" metabolite="Metabolite_23">
          <BoundingBox>
            <Position x="54.908035309457652" y="104.25990566572324"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="MetabGlyph" metabolite="Metabolite_24">
          <BoundingBox>
            <Position x="584.71390872531958" y="92.466475036361672"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="MetabGlyph" metabolite="Metabolite_26">
          <BoundingBox>
            <Position x="203.63471075591923" y="1105.2628172592463"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="MetabGlyph" metabolite="Metabolite_27">
          <BoundingBox>
            <Position x="615.02258207159912" y="28.214904735620166"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="236.31738514544222" y="470.570776894076"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="978.86931290214318" y="1069.409524351043"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="717.63002409899423" y="1038.5313443748157"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="480.07847008477364" y="965.27944842484374"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="616.4458910797614" y="491.95526823642319"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_38" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="697.36834409946118" y="565.05023932864458"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_39" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="850.02219010587237" y="806.8376733462095"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_40" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="1150.4868933150692" y="935.25830733051077"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_41" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="380.32570605041843" y="347.91790533566967"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_42" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="204.90773953981636" y="821.84785371456326"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_43" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="175.82317583203636" y="636.24838225012297"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_44" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="819.64618688778341" y="971.6447821747937"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_45" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="32.945630878934132" y="1024.2593362033206"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_46" name="ReactionGlyph" reaction="Reaction_26">
          <BoundingBox>
            <Position x="493.5741324341285" y="356.88920858515212"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="467.83865947971833" y="367.55053077034552"/>
                <End x="519.30960538853867" y="346.22788639995872"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_47" name="MetabReferenceGlyph" metaboliteGlyph="Layout_33" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="467.83865947971833" y="367.55053077034552"/>
                    <End x="242.31738514544222" y="468.55289339250902"/>
                    <BasePoint1 x="416.36771357089799" y="388.87317514073231"/>
                    <BasePoint2 x="316.47481288096503" y="434.04369535921739"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_48" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="519.30960538853867" y="346.22788639995872"/>
                    <End x="712.52684423364576" y="272.31420364922252"/>
                    <BasePoint1 x="570.78055129735901" y="324.90524202957192"/>
                    <BasePoint2 x="654.52143424270753" y="293.27906174680049"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_49" name="ReactionGlyph" reaction="Reaction_36">
          <BoundingBox>
            <Position x="930.92736029275716" y="612.27348745339384"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="925.4342326350004" y="565.79702384533243"/>
                <End x="936.42048795051392" y="658.74995106145525"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_50" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="925.4342326350004" y="565.79702384533243"/>
                    <End x="872.07510860105208" y="159.38025218981403"/>
                    <BasePoint1 x="914.44797731948688" y="472.8440966292095"/>
                    <BasePoint2 x="890.5149791313911" y="292.87394260548103"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="MetabReferenceGlyph" metaboliteGlyph="Layout_34" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="936.42048795051392" y="658.74995106145525"/>
                    <End x="978.81686016374863" y="1064.409524351043"/>
                    <BasePoint1 x="947.40674326602743" y="751.70287827757818"/>
                    <BasePoint2 x="965.85836554376647" y="931.29443311834132"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_52" name="ReactionGlyph" reaction="Reaction_37">
          <BoundingBox>
            <Position x="998.19772979141828" y="717.06422081896801"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="987.55869565826754" y="689.09226553915641"/>
                <End x="1008.836763924569" y="745.03617609877961"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_53" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="987.55869565826754" y="689.09226553915641"/>
                    <End x="907.10064668812549" y="447.46822251813933"/>
                    <BasePoint1 x="966.28062739196594" y="633.14835497953322"/>
                    <BasePoint2 x="931.37111997347029" y="526.32231110893042"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_54" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1008.836763924569" y="745.03617609877961"/>
                    <End x="1105.3169608028904" y="968.90732811437169"/>
                    <BasePoint1 x="1030.1148321908706" y="800.9800866584028"/>
                    <BasePoint2 x="1073.0354135634559" y="898.9296850262931"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_55" name="ReactionGlyph" reaction="Reaction_38">
          <BoundingBox>
            <Position x="1003.1732024393422" y="699.87464493419986"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1013.8122365724929" y="727.84660021401146"/>
                <End x="992.53416830619142" y="671.90268965438827"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_56" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1013.8122365724929" y="727.84660021401146"/>
                    <End x="1106.4966515079391" y="968.90732811437169"/>
                    <BasePoint1 x="1035.0903048387945" y="783.79051077363465"/>
                    <BasePoint2 x="1076.1129952399422" y="890.33489708390903"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_57" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="992.53416830619142" y="671.90268965438827"/>
                    <End x="908.16005240146251" y="447.46822251813933"/>
                    <BasePoint1 x="971.25610003988982" y="615.95877909476508"/>
                    <BasePoint2 x="934.38855915410079" y="517.72752316654635"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_58" name="ReactionGlyph" reaction="Reaction_19">
          <BoundingBox>
            <Position x="530.64469397532832" y="745.90733776873287"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="508.64568051265667" y="773.65604396296942"/>
                <End x="552.64370743799998" y="718.15863157449633"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_59" name="MetabReferenceGlyph" metaboliteGlyph="Layout_31" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="508.64568051265667" y="773.65604396296942"/>
                    <End x="252.5023658370913" y="1100.2628172592463"/>
                    <BasePoint1 x="464.6476535873133" y="829.15345635144251"/>
                    <BasePoint2 x="347.57550298086642" y="978.58248990246261"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_60" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="552.64370743799998" y="718.15863157449633"/>
                    <End x="603.0583084404376" y="851.73305355882303"/>
                    <BasePoint1 x="596.6417343633434" y="662.66121918602323"/>
                    <BasePoint2 x="610.84952813322639" y="743.3227832753048"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_61" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="552.64370743799998" y="718.15863157449633"/>
                    <End x="744.25734241853081" y="276.84433319020775"/>
                    <BasePoint1 x="596.6417343633434" y="662.66121918602323"/>
                    <BasePoint2 x="681.44904512227299" y="455.87842309099722"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_62" name="ReactionGlyph" reaction="Reaction_24">
          <BoundingBox>
            <Position x="368.92951103281962" y="650.17483341316779"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="393.99703510421313" y="690.84071165404032"/>
                <End x="343.86198696142611" y="609.50895517229526"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_63" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="393.99703510421313" y="690.84071165404032"/>
                    <End x="606.24420954265008" y="1036.3245771576062"/>
                    <BasePoint1 x="444.13208324700014" y="772.17246813578527"/>
                    <BasePoint2 x="537.72190843052181" y="924.58146176713194"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_64" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="343.86198696142611" y="609.50895517229526"/>
                    <End x="128.31738941481575" y="261.00701234015662"/>
                    <BasePoint1 x="293.7269388186391" y="528.17719869055031"/>
                    <BasePoint2 x="198.48840208103067" y="374.2591663949172"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_65" name="ReactionGlyph" reaction="Reaction_25">
          <BoundingBox>
            <Position x="608.21777344818361" y="969.6145546496241"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="608.92785024613136" y="978.84413082956326"/>
                <End x="607.50769665023586" y="960.38497846968494"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_66" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="608.92785024613136" y="978.84413082956326"/>
                    <End x="615.43010661896847" y="1036.3245771576062"/>
                    <BasePoint1 x="610.34800384202674" y="997.30328318944157"/>
                    <BasePoint2 x="613.24409362947154" y="1021.4287182634935"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_67" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="607.50769665023586" y="960.38497846968494"/>
                    <End x="604.33947417500588" y="889.73305355882303"/>
                    <BasePoint1 x="606.08754305434047" y="941.92582610980662"/>
                    <BasePoint2 x="604.8584702156993" y="911.21465174434525"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_68" name="ReactionGlyph" reaction="Reaction_2">
          <BoundingBox>
            <Position x="767.33995542417438" y="974.79379315405879"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="771.88140108006837" y="968.41889963594554"/>
                <End x="762.79850976828038" y="981.16868667217204"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_69" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="771.88140108006837" y="968.41889963594554"/>
                    <End x="796.90749152124101" y="930.53347401255098"/>
                    <BasePoint1 x="780.96429239185636" y="955.66911259971903"/>
                    <BasePoint2 x="791.20661478449574" y="939.91384654707838"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_70" name="MetabReferenceGlyph" metaboliteGlyph="Layout_35" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="762.79850976828038" y="981.16868667217204"/>
                    <End x="722.46849261307921" y="1033.5313443748157"/>
                    <BasePoint1 x="753.71561845649239" y="993.91847370839855"/>
                    <BasePoint2 x="735.8213327068388" y="1016.9123558006638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_71" name="ReactionGlyph" reaction="Reaction_3">
          <BoundingBox>
            <Position x="510.76152732491772" y="599.055458625965"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="481.44405566697202" y="567.01636365069362"/>
                <End x="540.07899898286337" y="631.09455360123638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_72" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="481.44405566697202" y="567.01636365069362"/>
                    <End x="238.99198509170427" y="289.75157450712362"/>
                    <BasePoint1 x="422.80911235108067" y="502.93817370015086"/>
                    <BasePoint2 x="316.2418128924196" y="380.32532661600158"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_73" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="540.07899898286337" y="631.09455360123638"/>
                    <End x="790.4959985175218" y="892.53347401255098"/>
                    <BasePoint1 x="598.71394229875477" y="695.17274355177915"/>
                    <BasePoint2 x="709.26370623711114" y="809.8726562698007"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_74" name="ReactionGlyph" reaction="Reaction_4">
          <BoundingBox>
            <Position x="516.65593515183457" y="594.09827212426887"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="545.97340680978027" y="626.13736709954026"/>
                <End x="487.33846349388887" y="562.05917714899749"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_75" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="545.97340680978027" y="626.13736709954026"/>
                    <End x="791.41557151010522" y="892.53347401255098"/>
                    <BasePoint1 x="604.60835012567168" y="690.21555705008302"/>
                    <BasePoint2 x="712.67069664686119" y="807.39406301895269"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_76" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="487.33846349388887" y="562.05917714899749"/>
                    <End x="239.8422480936099" y="289.75157450712362"/>
                    <BasePoint1 x="428.70352017799752" y="497.98098719845473"/>
                    <BasePoint2 x="319.61414830683088" y="377.84673336515345"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_77" name="ReactionGlyph" reaction="Reaction_7">
          <BoundingBox>
            <Position x="361.33232852944781" y="611.65596546477252"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="348.43388022810711" y="576.90457176888651"/>
                <End x="374.2307768307885" y="646.40735916065853"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_78" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="348.43388022810711" y="576.90457176888651"/>
                    <End x="230.64043761523848" y="289.75157450712362"/>
                    <BasePoint1 x="322.63698362542578" y="507.4017843771145"/>
                    <BasePoint2 x="270.1894864696618" y="381.20098259417603"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_79" name="MetabReferenceGlyph" metaboliteGlyph="Layout_36" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="374.2307768307885" y="646.40735916065853"/>
                    <End x="478.80542562408039" y="960.27944842484374"/>
                    <BasePoint1 x="400.02767343346983" y="715.91014655243055"/>
                    <BasePoint2 x="445.86577367944545" y="855.47049433658015"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_80" name="ReactionGlyph" reaction="Reaction_8">
          <BoundingBox>
            <Position x="567.34669890946861" y="743.76883828762925"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="545.36539533134874" y="717.2026581629234"/>
                <End x="589.32800248758849" y="770.3350184123351"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_81" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="545.36539533134874" y="717.2026581629234"/>
                    <End x="236.07713751397742" y="289.75157450712362"/>
                    <BasePoint1 x="501.40278817510892" y="664.07029791351169"/>
                    <BasePoint2 x="357.74931105548319" y="463.62784614796465"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_82" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="545.36539533134874" y="717.2026581629234"/>
                    <End x="594.29790767913016" y="851.73305355882303"/>
                    <BasePoint1 x="501.40278817510892" y="664.07029791351169"/>
                    <BasePoint2 x="536.85969613805958" y="744.61858567381432"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="589.32800248758849" y="770.3350184123351"/>
                    <End x="837.81337376076942" y="1083.0659165270908"/>
                    <BasePoint1 x="633.29060964382825" y="823.46737866174681"/>
                    <BasePoint2 x="746.54264349135883" y="966.54973765677187"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_84" name="ReactionGlyph" reaction="Reaction_9">
          <BoundingBox>
            <Position x="552.85364466608348" y="740.49391012312969"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="574.83494824420336" y="767.06009024783555"/>
                <End x="530.8723410879636" y="713.92772999842384"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_85" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="574.83494824420336" y="767.06009024783555"/>
                    <End x="837.01036945949465" y="1083.0659165270908"/>
                    <BasePoint1 x="618.79755540044312" y="820.19245049724725"/>
                    <BasePoint2 x="738.89461421902888" y="964.91227357452203"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_86" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="530.8723410879636" y="713.92772999842384"/>
                    <End x="235.48422333015702" y="289.75157450712362"/>
                    <BasePoint1 x="486.90973393172379" y="660.79536974901214"/>
                    <BasePoint2 x="350.20632684188047" y="461.99038206571493"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="530.8723410879636" y="713.92772999842384"/>
                    <End x="593.13295889400979" y="851.73305355882303"/>
                    <BasePoint1 x="486.90973393172379" y="660.79536974901214"/>
                    <BasePoint2 x="529.03069462380677" y="742.9811215915646"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_88" name="ReactionGlyph" reaction="Reaction_10">
          <BoundingBox>
            <Position x="655.96054542968432" y="1072.9224328812902"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="676.1174227696489" y="1076.2010291917909"/>
                <End x="635.80366808971974" y="1069.6438365707895"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_89" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="676.1174227696489" y="1076.2010291917909"/>
                    <End x="805.78238148390824" y="1095.4105909801044"/>
                    <BasePoint1 x="716.43117744957806" y="1082.7582218127923"/>
                    <BasePoint2 x="771.18521813672544" y="1090.7237045516986"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_90" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="635.80366808971974" y="1069.6438365707895"/>
                    <End x="488.64483468461697" y="1043.605052964793"/>
                    <BasePoint1 x="595.48991340979057" y="1063.0866439497881"/>
                    <BasePoint2 x="531.98893537722142" y="1051.7065503020403"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_91" name="ReactionGlyph" reaction="Reaction_11">
          <BoundingBox>
            <Position x="649.94701417181705" y="1070.9399519925737"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="629.79013683185246" y="1067.661355682073"/>
                <End x="670.10389151178163" y="1074.2185483030744"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_92" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="629.79013683185246" y="1067.661355682073"/>
                    <End x="488.64483468461697" y="1043.3579402225175"/>
                    <BasePoint1 x="589.4763821519233" y="1061.1041630610716"/>
                    <BasePoint2 x="528.98216974828779" y="1050.5917534865443"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_93" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="670.10389151178163" y="1074.2185483030744"/>
                    <End x="805.78238148390824" y="1095.0372218767764"/>
                    <BasePoint1 x="710.41764619171079" y="1080.7757409240758"/>
                    <BasePoint2 x="768.1784525077918" y="1089.5457795556763"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_94" name="ReactionGlyph" reaction="Reaction_12">
          <BoundingBox>
            <Position x="535.08228121007642" y="958.19500390939788"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="527.3793671550543" y="966.48305074731059"/>
                <End x="542.78519526509854" y="949.90695707148518"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_95" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="527.3793671550543" y="966.48305074731059"/>
                    <End x="471.80725254202008" y="1017.4939903170773"/>
                    <BasePoint1 x="511.97353904501" y="983.05914442313599"/>
                    <BasePoint2 x="488.03893876600398" y="1004.420590789063"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_96" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="542.78519526509854" y="949.90695707148518"/>
                    <End x="589.8890581040904" y="889.73305355882303"/>
                    <BasePoint1 x="558.19102337514278" y="933.33086339565978"/>
                    <BasePoint2 x="577.8914977671277" y="907.38793505828505"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_97" name="ReactionGlyph" reaction="Reaction_14">
          <BoundingBox>
            <Position x="719.50355555292185" y="979.41993194952647"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="731.95751883786431" y="990.98657509793986"/>
                <End x="707.04959226797939" y="967.85328880111308"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_98" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="731.95751883786431" y="990.98657509793986"/>
                    <End x="832.06034019729236" y="1083.0659165270908"/>
                    <BasePoint1 x="756.86544540774912" y="1014.1198613947666"/>
                    <BasePoint2 x="800.68987444499203" y="1054.3762105351354"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_99" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="707.04959226797939" y="967.85328880111308"/>
                    <End x="623.84629602954067" y="889.73305355882303"/>
                    <BasePoint1 x="682.14166569809458" y="944.7200025042863"/>
                    <BasePoint2 x="646.7669992213464" y="911.44320645734797"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_100" name="ReactionGlyph" reaction="Reaction_15">
          <BoundingBox>
            <Position x="536.32210207210767" y="686.81403559510773"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="567.83074594340508" y="728.37975269610604"/>
                <End x="504.81345820081026" y="645.24831849410941"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_101" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="567.83074594340508" y="728.37975269610604"/>
                    <End x="838.2696161486316" y="1083.0659165270908"/>
                    <BasePoint1 x="630.84803368599989" y="811.51118689810278"/>
                    <BasePoint2 x="750.31314685296445" y="968.07141026309591"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_102" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="504.81345820081026" y="645.24831849410941"/>
                    <End x="236.90271784061011" y="289.75157450712362"/>
                    <BasePoint1 x="441.79617045821544" y="562.11688429211267"/>
                    <BasePoint2 x="323.59512221376406" y="405.15137084911896"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_103" name="ReactionGlyph" reaction="Reaction_16">
          <BoundingBox>
            <Position x="611.37808727582387" y="690.65994332985008"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="612.04022604055899" y="671.74605406373007"/>
                <End x="610.71594851108875" y="709.57383259597009"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_104" name="MetabReferenceGlyph" metaboliteGlyph="Layout_37" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="612.04022604055899" y="671.74605406373007"/>
                    <End x="616.80664880236202" y="497.95526823642319"/>
                    <BasePoint1 x="613.36450357002911" y="633.91827553149005"/>
                    <BasePoint2 x="615.41664556856313" y="556.47982725089662"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_105" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="610.71594851108875" y="709.57383259597009"/>
                    <End x="604.57947421081519" y="851.73305355882303"/>
                    <BasePoint1 x="609.39167098161863" y="747.40161112821011"/>
                    <BasePoint2 x="606.65450321384935" y="809.02427697657663"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_106" name="ReactionGlyph" reaction="Reaction_17">
          <BoundingBox>
            <Position x="659.38329689300031" y="727.43905221361877"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="654.67503547728029" y="742.69819292512773"/>
                <End x="664.09155830872032" y="712.1799115021098"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_107" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="654.67503547728029" y="742.69819292512773"/>
                    <End x="611.7997137866065" y="851.73305355882303"/>
                    <BasePoint1 x="645.25851264584014" y="773.21647434814554"/>
                    <BasePoint2 x="626.17498250836331" y="820.10433430923877"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_108" name="MetabReferenceGlyph" metaboliteGlyph="Layout_38" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="664.09155830872032" y="712.1799115021098"/>
                    <End x="696.71443968568917" y="571.05023932864458"/>
                    <BasePoint1 x="673.50808114016047" y="681.66163007909199"/>
                    <BasePoint2 x="687.46539112078483" y="618.72636434811375"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_109" name="ReactionGlyph" reaction="Reaction_18">
          <BoundingBox>
            <Position x="529.8691279625491" y="740.63602634190158"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="551.86814142522076" y="712.88732014766504"/>
                <End x="507.87011449987745" y="768.38473253613813"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_110" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="551.86814142522076" y="712.88732014766504"/>
                    <End x="603.00516975685582" y="851.73305355882303"/>
                    <BasePoint1 x="595.86616835056407" y="657.38990775919194"/>
                    <BasePoint2 x="610.43517578504589" y="740.68712756188916"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_111" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="551.86814142522076" y="712.88732014766504"/>
                    <End x="744.12455265534697" y="276.84433319020775"/>
                    <BasePoint1 x="595.86616835056407" y="657.38990775919194"/>
                    <BasePoint2 x="680.99486723429141" y="453.24276737758157"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_112" name="MetabReferenceGlyph" metaboliteGlyph="Layout_31" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="507.87011449987745" y="768.38473253613813"/>
                    <End x="252.18715295052539" y="1100.2628172592463"/>
                    <BasePoint1 x="463.87208757453408" y="823.88214492461123"/>
                    <BasePoint2 x="347.03011353119388" y="975.94683418904697"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_113" name="ReactionGlyph" reaction="Reaction_32">
          <BoundingBox>
            <Position x="911.22426783568653" y="602.66877727483325"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="899.96106253616449" y="639.41031054114444"/>
                <End x="922.48747313520857" y="565.92724400852205"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_114" name="MetabReferenceGlyph" metaboliteGlyph="Layout_39" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="899.96106253616449" y="639.41031054114444"/>
                    <End x="852.08944769488414" y="801.8376733462095"/>
                    <BasePoint1 x="877.43465193712029" y="712.89337707376683"/>
                    <BasePoint2 x="859.13044716624108" y="775.73629184314382"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_115" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="922.48747313520857" y="565.92724400852205"/>
                    <End x="1069.8695161215901" y="91.507008019985591"/>
                    <BasePoint1 x="945.01388373425277" y="492.44417747589966"/>
                    <BasePoint2 x="1013.0733025776825" y="273.60482611478704"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_116" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="814.60810345821847" y="892.53347401255098"/>
                    <End x="901.66341958305634" y="599.73787627169816"/>
                    <BasePoint1 x="858.1357615206374" y="746.13567514212457"/>
                    <BasePoint2 x="892.10257133042614" y="596.80697526856306"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_117" name="ReactionGlyph" reaction="Reaction_33">
          <BoundingBox>
            <Position x="1111.4337467620614" y="504.83324578298607"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1107.6737169011237" y="461.67068081745981"/>
                <End x="1115.1937766229992" y="547.99581074851233"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_118" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1107.6737169011237" y="461.67068081745981"/>
                    <End x="1077.3150970745305" y="91.507008019985591"/>
                    <BasePoint1 x="1100.1536571792483" y="375.3455508864073"/>
                    <BasePoint2 x="1086.8543621964204" y="211.84499697043333"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_119" name="MetabReferenceGlyph" metaboliteGlyph="Layout_40" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1115.1937766229992" y="547.99581074851233"/>
                    <End x="1150.4710255742389" y="930.25830733051077"/>
                    <BasePoint1 x="1122.7138363448746" y="634.32094067956484"/>
                    <BasePoint2 x="1138.4724458900255" y="803.87090648780099"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_120" name="ReactionGlyph" reaction="Reaction_5">
          <BoundingBox>
            <Position x="617.73337054610977" y="945.8803168137714"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="630.56768013692727" y="938.61228048720193"/>
                <End x="604.89906095529227" y="953.14835314034087"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_121" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="630.56768013692727" y="938.61228048720193"/>
                    <End x="769.95893721687389" y="914.73644788578031"/>
                    <BasePoint1 x="656.23629931856226" y="924.07620783406287"/>
                    <BasePoint2 x="719.51477306312677" y="915.77230969663685"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_122" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="630.56768013692727" y="938.61228048720193"/>
                    <End x="622.41461683328055" y="889.73305355882303"/>
                    <BasePoint1 x="656.23629931856226" y="924.07620783406287"/>
                    <BasePoint2 x="645.74261287133015" y="903.27061253315821"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_123" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="604.89906095529227" y="953.14835314034087"/>
                    <End x="485.42658322115085" y="1017.4939903170773"/>
                    <BasePoint1 x="579.23044177365728" y="967.68442579347993"/>
                    <BasePoint2 x="525.91135770199526" y="996.22322621856335"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_124" name="ReactionGlyph" reaction="Reaction_34">
          <BoundingBox>
            <Position x="800.37204963998261" y="274.3101089029081"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="810.68602645744795" y="270.91644669441666"/>
                <End x="790.05807282251726" y="277.70377111139953"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_125" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="810.68602645744795" y="270.91644669441666"/>
                    <End x="1051.5460145292602" y="91.507008019985591"/>
                    <BasePoint1 x="831.31398009237864" y="264.12912227743379"/>
                    <BasePoint2 x="946.5869857195521" y="176.12123404446402"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_126" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="790.05807282251726" y="277.70377111139953"/>
                    <End x="856.3123593356396" y="159.38025218981403"/>
                    <BasePoint1 x="769.43011918758657" y="284.4910955283824"/>
                    <BasePoint2 x="807.71425085288047" y="223.63250496334391"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_127" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="460.55362177435165" y="602.1981838256097"/>
                    <End x="803.49755901921139" y="283.80911891029064"/>
                    <BasePoint1 x="632.02559039678158" y="443.00365136795017"/>
                    <BasePoint2 x="806.62306839844018" y="293.30812891767317"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_128" name="ReactionGlyph" reaction="Reaction_35">
          <BoundingBox>
            <Position x="973.925315603326" y="100.71642993770972"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="963.61133878586065" y="104.11009214620114"/>
                <End x="984.23929242079134" y="97.322767729218299"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_129" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="963.61133878586065" y="104.11009214620114"/>
                    <End x="916.85823910788542" y="121.38025218981403"/>
                    <BasePoint1 x="942.98338515092996" y="110.89741656318398"/>
                    <BasePoint2 x="924.76382372067496" y="117.83566548074472"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_130" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="984.23929242079134" y="97.322767729218299"/>
                    <End x="1020.7862960963143" y="86.488638350710488"/>
                    <BasePoint1 x="1004.867246055722" y="90.535443312235458"/>
                    <BasePoint2 x="1017.9837594847509" y="86.815209727227256"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_131" name="ReactionGlyph" reaction="Reaction_21">
          <BoundingBox>
            <Position x="419.96898836221391" y="989.78573466514047"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="401.66556811075685" y="1002.2122228501617"/>
                <End x="438.27240861367096" y="977.35924648011928"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_132" name="MetabReferenceGlyph" metaboliteGlyph="Layout_31" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="401.66556811075685" y="1002.2122228501617"/>
                    <End x="263.89413449896347" y="1100.2628172592463"/>
                    <BasePoint1 x="365.0587276078428" y="1027.065199220204"/>
                    <BasePoint2 x="305.3247209276746" y="1069.8772523322357"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_133" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="438.27240861367096" y="977.35924648011928"/>
                    <End x="573.77090118069884" y="889.73305355882303"/>
                    <BasePoint1 x="474.87924911658502" y="952.50627011007691"/>
                    <BasePoint2 x="533.47678527437051" y="914.90641774193944"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_134" name="ReactionGlyph" reaction="Reaction_27">
          <BoundingBox>
            <Position x="561.75991189938713" y="306.54182565109988"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="580.29496880854845" y="302.01314704382679"/>
                <End x="543.22485499022582" y="311.07050425837298"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_135" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="580.29496880854845" y="302.01314704382679"/>
                    <End x="712.52684423364576" y="268.05101796032409"/>
                    <BasePoint1 x="617.36508262687119" y="292.9557898292806"/>
                    <BasePoint2 x="674.21349188483919" y="278.2390645911658"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_136" name="MetabReferenceGlyph" metaboliteGlyph="Layout_41" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="543.22485499022582" y="311.07050425837298"/>
                    <End x="386.32570605041843" y="347.17641136665998"/>
                    <BasePoint1 x="506.15474117190308" y="320.12786147291916"/>
                    <BasePoint2 x="436.97269515658007" y="335.91647572342612"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_137" name="ReactionGlyph" reaction="Reaction_28">
          <BoundingBox>
            <Position x="162.75250071340622" y="527.5000193871241"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="167.19517917458984" y="556.51706145584444"/>
                <End x="158.3098222522226" y="498.48297731840375"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_138" name="MetabReferenceGlyph" metaboliteGlyph="Layout_42" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="167.19517917458984" y="556.51706145584444"/>
                    <End x="204.63150193531308" y="816.84785371456326"/>
                    <BasePoint1 x="176.08053609695708" y="614.55114559328513"/>
                    <BasePoint2 x="192.57735824672687" y="730.20802068828436"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_139" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="158.3098222522226" y="498.48297731840375"/>
                    <End x="119.70136687875635" y="261.00701234015662"/>
                    <BasePoint1 x="149.42446532985537" y="440.44889318096307"/>
                    <BasePoint2 x="132.34157687371405" y="336.21943172619967"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_140" name="ReactionGlyph" reaction="Reaction_29">
          <BoundingBox>
            <Position x="144.23721675543385" y="430.28069128173314"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="141.24876647963924" y="410.54362278623483"/>
                <End x="147.22566703122845" y="450.01775977723145"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_141" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="141.24876647963924" y="410.54362278623483"/>
                    <End x="119.30970573326111" y="261.00701234015662"/>
                    <BasePoint1 x="135.27186592805" y="371.06948579523817"/>
                    <BasePoint2 x="125.79656069275825" y="306.16971481994824"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_142" name="MetabReferenceGlyph" metaboliteGlyph="Layout_43" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="147.22566703122845" y="450.01775977723145"/>
                    <End x="175.45962578224015" y="631.24838225012297"/>
                    <BasePoint1 x="153.20256758281769" y="489.49189676822812"/>
                    <BasePoint2 x="165.82532182042621" y="570.23867375692475"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_143" name="ReactionGlyph" reaction="Reaction_30">
          <BoundingBox>
            <Position x="673.46727307381082" y="823.24341980339079"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="690.64373353927317" y="840.11050254258703"/>
                <End x="656.29081260834846" y="806.37633706419456"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_144" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="690.64373353927317" y="840.11050254258703"/>
                    <End x="770.46686253607027" y="939.53983860953394"/>
                    <BasePoint1 x="724.99665447019788" y="873.8446680209795"/>
                    <BasePoint2 x="756.31998873586531" y="915.12579468485478"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_145" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="656.29081260834846" y="806.37633706419456"/>
                    <End x="462.90295400355859" y="640.1981838256097"/>
                    <BasePoint1 x="621.93789167742375" y="772.64217158580209"/>
                    <BasePoint2 x="533.83219260776002" y="697.98663633610784"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_146" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="783.37637989122925" y="892.53347401255098"/>
                    <End x="680.47379178166682" y="816.10838682543874"/>
                    <BasePoint1 x="731.92508583644803" y="854.32093041899486"/>
                    <BasePoint2 x="687.48031048952282" y="808.97335384748669"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_147" name="ReactionGlyph" reaction="Reaction_22">
          <BoundingBox>
            <Position x="446.58282766497246" y="729.18867524802147"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="433.69402723030186" y="704.24094803761568"/>
                <End x="459.47162809964306" y="754.13640245842726"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_148" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="433.69402723030186" y="704.24094803761568"/>
                    <End x="586.51198381770166" y="851.73305355882303"/>
                    <BasePoint1 x="407.91642636096066" y="654.34549361680411"/>
                    <BasePoint2 x="490.76980487199586" y="740.56540998261062"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_149" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="433.69402723030186" y="704.24094803761568"/>
                    <End x="129.97974933974564" y="261.00701234015662"/>
                    <BasePoint1 x="407.91642636096066" y="654.34549361680411"/>
                    <BasePoint2 x="262.50368763301788" y="445.20238937327741"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_150" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="459.47162809964306" y="754.13640245842726"/>
                    <End x="607.87470328417191" y="1036.3245771576062"/>
                    <BasePoint1 x="485.24922896898426" y="804.03185687923883"/>
                    <BasePoint2 x="553.00636634391344" y="932.65208062362547"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_151" name="ReactionGlyph" reaction="Reaction_23">
          <BoundingBox>
            <Position x="454.81177477270586" y="729.56268871300642"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="467.70057520737646" y="754.51041592341221"/>
                <End x="441.92297433803526" y="704.61496150260064"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_152" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="467.70057520737646" y="754.51041592341221"/>
                    <End x="608.48286303920906" y="1036.3245771576062"/>
                    <BasePoint1 x="493.47817607671766" y="804.40587034422379"/>
                    <BasePoint2 x="557.42491977529869" y="932.83908735611794"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_153" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="441.92297433803526" y="704.61496150260064"/>
                    <End x="587.20601566273115" y="851.73305355882303"/>
                    <BasePoint1 x="416.14537346869406" y="654.71950708178906"/>
                    <BasePoint2 x="495.23129434837728" y="740.7524167151031"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_154" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="441.92297433803526" y="704.61496150260064"/>
                    <End x="130.34641778241448" y="261.00701234015662"/>
                    <BasePoint1 x="416.14537346869406" y="654.71950708178906"/>
                    <BasePoint2 x="266.80149540821895" y="445.38939610576989"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_155" name="ReactionGlyph" reaction="Reaction_31">
          <BoundingBox>
            <Position x="615.71908218222211" y="780.51442647910994"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="598.54262171675975" y="763.64734373991371"/>
                <End x="632.89554264768447" y="797.38150921830618"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_156" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="598.54262171675975" y="763.64734373991371"/>
                    <End x="461.77736493887988" y="640.1981838256097"/>
                    <BasePoint1 x="564.18970078583504" y="729.91317826152124"/>
                    <BasePoint2 x="504.39530262962626" y="676.62213967396747"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_157" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="632.89554264768447" y="797.38150921830618"/>
                    <End x="766.26591876101043" y="939.53983860953394"/>
                    <BasePoint1 x="667.24846357860918" y="831.11567469669865"/>
                    <BasePoint2 x="725.34542140254098" y="893.7612980227143"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_158" name="ReactionGlyph" reaction="Reaction_6">
          <BoundingBox>
            <Position x="619.05852743534285" y="947.44374655811828"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="606.22421784452536" y="954.71178288468775"/>
                <End x="631.89283702616035" y="940.17571023154881"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_159" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="606.22421784452536" y="954.71178288468775"/>
                    <End x="486.63290134082393" y="1017.4939903170773"/>
                    <BasePoint1 x="580.55559866289036" y="969.24785553782681"/>
                    <BasePoint2 x="527.17709520644837" y="997.00494109073679"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_160" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="631.89283702616035" y="940.17571023154881"/>
                    <End x="769.95893721687389" y="915.16722257561662"/>
                    <BasePoint1 x="657.56145620779535" y="925.63963757840975"/>
                    <BasePoint2 x="720.17735150774342" y="916.76941191372839"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_161" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="631.89283702616035" y="940.17571023154881"/>
                    <End x="622.34037917166813" y="889.73305355882303"/>
                    <BasePoint1 x="657.56145620779535" y="925.63963757840975"/>
                    <BasePoint2 x="646.36807248514049" y="904.05232740533165"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_162" name="ReactionGlyph" reaction="Reaction_1">
          <BoundingBox>
            <Position x="809.44397876333767" y="945.12857663649299"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="810.00334124688311" y="948.15914204460512"/>
                <End x="808.88461627979223" y="942.09801122838087"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_163" name="MetabReferenceGlyph" metaboliteGlyph="Layout_44" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="810.00334124688311" y="948.15914204460512"/>
                    <End x="817.37720376882658" y="966.6447821747937"/>
                    <BasePoint1 x="811.12206621397411" y="954.22027286082937"/>
                    <BasePoint2 x="814.52931623317306" y="961.9478102218676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_164" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="808.88461627979223" y="942.09801122838087"/>
                    <End x="808.03384656581875" y="930.53347401255098"/>
                    <BasePoint1 x="807.76589131270123" y="936.03688041215662"/>
                    <BasePoint2 x="807.62018769748727" y="931.76989450829774"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_165" name="ReactionGlyph" reaction="Reaction_0">
          <BoundingBox>
            <Position x="544.61766709138544" y="683.73311672099442"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="493.28071477447531" y="717.70730169983676"/>
                <End x="595.95461940829557" y="649.75893174215207"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_166" name="MetabReferenceGlyph" metaboliteGlyph="Layout_45" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="493.28071477447531" y="717.70730169983676"/>
                    <End x="38.945630878934132" y="1021.0773286634187"/>
                    <BasePoint1 x="390.60681014065506" y="785.65567165752157"/>
                    <BasePoint2 x="189.10774435133953" y="920.35359264989131"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_167" name="MetabReferenceGlyph" metaboliteGlyph="Layout_25" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="595.95461940829557" y="649.75893174215207"/>
                    <End x="1031.1421715248507" y="364.27563662647293"/>
                    <BasePoint1 x="698.62852404211583" y="581.81056178446727"/>
                    <BasePoint2 x="890.55382394193839" y="456.05600671604896"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_168" name="ReactionGlyph" reaction="Reaction_13">
          <BoundingBox>
            <Position x="637.06057226921712" y="977.02735158051223"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="619.09486714260424" y="983.27537739573859"/>
                <End x="655.02627739582999" y="970.77932576528588"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_169" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="619.09486714260424" y="983.27537739573859"/>
                    <End x="488.64483468461697" y="1024.5991709718855"/>
                    <BasePoint1 x="583.16345688937849" y="995.77142902619119"/>
                    <BasePoint2 x="526.92129322369135" y="1013.3093129066515"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_170" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="655.02627739582999" y="970.77932576528588"/>
                    <End x="769.95893721687389" y="926.98451551801531"/>
                    <BasePoint1 x="690.95768764905574" y="958.28327413483328"/>
                    <BasePoint2 x="739.44116499627125" y="939.50988191881106"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_171" name="ReactionGlyph" reaction="Reaction_20">
          <BoundingBox>
            <Position x="500.3634315557141" y="692.00659613300377"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="474.66882488182779" y="735.07752033645568"/>
                <End x="526.05803822960047" y="648.93567192955186"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_172" name="MetabReferenceGlyph" metaboliteGlyph="Layout_31" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="474.66882488182779" y="735.07752033645568"/>
                    <End x="249.46940510115181" y="1100.2628172592463"/>
                    <BasePoint1 x="423.27961153405511" y="821.2193687433595"/>
                    <BasePoint2 x="323.52720498066031" y="982.27655510302884"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_173" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="526.05803822960047" y="648.93567192955186"/>
                    <End x="740.68074556706495" y="276.84433319020775"/>
                    <BasePoint1 x="577.44725157737309" y="562.79382352264804"/>
                    <BasePoint2 x="671.91130190916215" y="398.28361625470194"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_174" name="TextGlyph" graphicalObject="Layout_3" originOfText="Metabolite_15">
          <BoundingBox>
            <Position x="912.73439054792777" y="928.88393550975275"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_175" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_29">
          <BoundingBox>
            <Position x="305.11756217206738" y="581.46770727311355"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_176" name="TextGlyph" graphicalObject="Layout_5" originOfText="Metabolite_25">
          <BoundingBox>
            <Position x="94.01365849610238" y="601.53139824120149"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_177" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_14">
          <BoundingBox>
            <Position x="774.95893721687389" y="897.53347401255098"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_178" name="TextGlyph" graphicalObject="Layout_7" originOfText="Metabolite_12">
          <BoundingBox>
            <Position x="717.52684423364576" y="243.84433319020772"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_179" name="TextGlyph" graphicalObject="Layout_8" originOfText="Metabolite_13">
          <BoundingBox>
            <Position x="262.47875445527666" y="26.34932165283664"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_180" name="TextGlyph" graphicalObject="Layout_9" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="757.61750885469166" y="944.53983860953394"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_181" name="TextGlyph" graphicalObject="Layout_10" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="406.08829954544484" y="607.1981838256097"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_182" name="TextGlyph" graphicalObject="Layout_11" originOfText="Metabolite_2">
          <BoundingBox>
            <Position x="415.64483468461697" y="1022.4939903170773"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_183" name="TextGlyph" graphicalObject="Layout_12" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="642.58262752156384" y="876.99767049366108"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_184" name="TextGlyph" graphicalObject="Layout_13" originOfText="Metabolite_28">
          <BoundingBox>
            <Position x="583.90465174401413" y="1041.3245771576062"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_185" name="TextGlyph" graphicalObject="Layout_14" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="819.50675974700766" y="126.38025218981403"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_186" name="TextGlyph" graphicalObject="Layout_15" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="1025.7862960963143" y="58.507008019985598"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_187" name="TextGlyph" graphicalObject="Layout_16" originOfText="Metabolite_6">
          <BoundingBox>
            <Position x="413.93403607373352" y="534.55246995271"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_188" name="TextGlyph" graphicalObject="Layout_17" originOfText="Metabolite_7">
          <BoundingBox>
            <Position x="382.75321268805811" y="41.057024239384731"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_189" name="TextGlyph" graphicalObject="Layout_18" originOfText="Metabolite_8">
          <BoundingBox>
            <Position x="1079.8256484418939" y="973.90732811437169"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_190" name="TextGlyph" graphicalObject="Layout_19" originOfText="Metabolite_9">
          <BoundingBox>
            <Position x="859.04496577887824" y="414.46822251813933"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_191" name="TextGlyph" graphicalObject="Layout_20" originOfText="Metabolite_10">
          <BoundingBox>
            <Position x="577.70311578505994" y="856.73305355882303"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_192" name="TextGlyph" graphicalObject="Layout_21" originOfText="Metabolite_11">
          <BoundingBox>
            <Position x="423.71615176424342" y="87.774597237579655"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_193" name="TextGlyph" graphicalObject="Layout_22" originOfText="Metabolite_16">
          <BoundingBox>
            <Position x="299.99718410113024" y="566.66330598751108"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_194" name="TextGlyph" graphicalObject="Layout_23" originOfText="Metabolite_17">
          <BoundingBox>
            <Position x="82.554170316143995" y="228.00701234015665"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_195" name="TextGlyph" graphicalObject="Layout_24" originOfText="Metabolite_18">
          <BoundingBox>
            <Position x="126.51596850117511" y="469.39959225459069"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_196" name="TextGlyph" graphicalObject="Layout_25" originOfText="Metabolite_19">
          <BoundingBox>
            <Position x="1026.1846772171364" y="331.27563662647293"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_197" name="TextGlyph" graphicalObject="Layout_26" originOfText="Metabolite_20">
          <BoundingBox>
            <Position x="204.60950405796027" y="256.75157450712362"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_198" name="TextGlyph" graphicalObject="Layout_27" originOfText="Metabolite_21">
          <BoundingBox>
            <Position x="810.78238148390824" y="1088.0659165270908"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_199" name="TextGlyph" graphicalObject="Layout_28" originOfText="Metabolite_22">
          <BoundingBox>
            <Position x="371.97831333819335" y="1006.7008095571809"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_200" name="TextGlyph" graphicalObject="Layout_29" originOfText="Metabolite_23">
          <BoundingBox>
            <Position x="54.908035309457652" y="104.25990566572324"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_201" name="TextGlyph" graphicalObject="Layout_30" originOfText="Metabolite_24">
          <BoundingBox>
            <Position x="584.71390872531958" y="92.466475036361672"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_202" name="TextGlyph" graphicalObject="Layout_31" originOfText="Metabolite_26">
          <BoundingBox>
            <Position x="203.63471075591923" y="1105.2628172592463"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_203" name="TextGlyph" graphicalObject="Layout_32" originOfText="Metabolite_27">
          <BoundingBox>
            <Position x="615.02258207159912" y="28.214904735620166"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfAdditionalGraphicalObjects>
        <AdditionalGraphicalObject key="Layout_204" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="189.19854901632971" y="268.18682237535637"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_205" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="420.54465551554125" y="1128.1526035537952"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_206" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="643.3103465386049" y="1.6466811340841581"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_207" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="759.63335095560717" y="401.24969064713792"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_208" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="789.60510371289013" y="618.79284171494328"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_209" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="1078.1652003917361" y="578.22051399539851"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_210" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="334.98316217075711" y="147.57859602994546"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_211" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="0" y="624.6476200335037"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_212" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="924.6429321355173" y="271.12061882717086"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_213" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="717.8375452817329" y="193.87883233891995"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_214" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="209.92236588753076" y="1159.3277361492244"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_215" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="64.777891475381836" y="429.10659326120464"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_216" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="561.42032663665589" y="318.48520154679142"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_217" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="944.13805040865304" y="447.01124319962668"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_218" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="278.55055806831473" y="971.6686583350056"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_219" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="513.65210682823658" y="131.05586463723927"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
      </ListOfAdditionalGraphicalObjects>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="Csikasz-Nagy2006.xml">
    <SBMLMap SBMLid="APC" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="APCP" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="APCT" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Assoc_of_CKI_with_CycA" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Assoc_of_CKI_with_CycE" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="BCKI" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="CKI" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="CKIT" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Cdc14" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Cdc20A" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Cdc20T" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Cdc20i" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Cdc25P" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Cdc25_action" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Cdh1" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Cdh1T" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Cdh1i" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="CycA" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="CycAT" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="CycB" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="CycBT" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="CycD" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="CycD0" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="CycE" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="CycET" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Deg_of_CKI" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Deg_of_CKI_moeity_in_BCKI" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="Deg_of_CKI_moeity_in_TriA" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Deg_of_CKI_moeity_in_TriE" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Deg_of_CKI_moeity_in_pBCKI" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Deg_of_Cdc20i" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Deg_of_CycA" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Deg_of_CycA_moeity_in_TriA" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Deg_of_CycB_moeity__in_BCKI" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Deg_of_CycE" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Deg_of_CycE_moeity_in_TriE" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Deg_of_MPF" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Deg_of_pB_moeity_in_pBCKI" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Function_for_Assoc__of_CKI_with_CycA" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_Assoc__of_CKI_with_CycE" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_Cdc25_action" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CKI" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CKI_moeity_in_BCKI" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CKI_moeity_in_TriA" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CKI_moeity_in_TriE" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CKI_moeity_in_pBCKI" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_Deg__of_Cdc20i" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CycA" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CycA_moeity_in_TriA" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CycB_moeity__in_BCKI" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CycE" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Function_for_Deg__of_CycE_moeity_in_TriE" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_Deg__of_MPF" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_Deg__of_pB_moeity_in_pBCKI" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_Mass_accumulation" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_Synthesis_of_CKI" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_Synthesis_of_Cdc20i" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Function_for_Synthesis_of_CycA_by_TFE" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_Synthesis_of_CycE_by_TFE" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_Synthesis_of_MPF" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_Wee1_action" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_activation_of_APCP" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Function_for_activation_of_Cdc20i" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Function_for_activation_of_Cdh1" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Function_for_activation_of_MPF_from_pB_by_Cdc25" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_assoc__of_MPF_with_CKI" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_assoc__of_pB_with_CKI" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_deg__of_pB" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_degradation" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="Function_for_dissoc1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_dissoc2" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_dissoc3" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_dissoc4" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_inactivation1" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="Function_for_inactivation2" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="Function_for_inactivation__of_Cdh1" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="Function_for_inactivation_of_MPFby_Wee1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="GK" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="J20" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Ja20" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Ja25" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Jafb" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Jafi" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Jah1" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Jaie" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Jatf" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="Jawee" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Ji20" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="Ji25" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="Jifb" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Jifi" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Jih1" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Jiie" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Jitf" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Jiwee" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="KEZ" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="Mass" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Mass_Action_0" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Mass_Action_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Mass_Action_2" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Mass_accumulation" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="MaxMass" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="MichaelisMenten" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Synthesis_of_CKI" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Synthesis_of_Cdc20i" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Synthesis_of_CycA_by_TFE" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Synthesis_of_CycE_by_TFE" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Synthesis_of_MPF" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="TFB" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="TFE" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="TFI" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="TriA" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="TriB" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="TriE" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="V25" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Vah1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Vatf" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Vda" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Vdb" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Vde" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Vdi" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Vih1" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Vitf" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Vsa" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Vsb" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Vse" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Vsi" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Vwee" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Wee1" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Wee1_action" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="activation_of_APCP" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="activation_of_Cdc20i" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="activation_of_Cdh1" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="activation_of_MPF_from_pB_by_Cdc25" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="assoc_of_MPF_with_CKI" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="assoc_of_pB_with_CKI" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="deg_of_pB" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="degradation" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="dissoc_1" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="dissoc_2" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="dissoc_3" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="dissoc_4" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="inactivation_1" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="inactivation_2" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="inactivation__of_Cdh1" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="inactivation_of_MPFby_Wee1" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="k14di" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k25a" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k25b" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="ka20" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="ka25a" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="ka25b" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kafb" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kafi" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="kah1a" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="kah1b" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kaie" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kassa" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kassb" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kasse" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="katf" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="katfa" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="katfd" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="katfe" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="kaweea" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="kaweeb" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kd20" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="kdaa" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="kdab" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kdac" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="kdb" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="kdbc" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="kdbh" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="kde" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="kdea" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="kdeb" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="kdee" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="kdi" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="kdia" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="kdib" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="kdid" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="kdie" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="kdissa" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="kdissb" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="kdisse" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="ki20" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="ki25a" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="ki25b" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="kifb" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="kifi" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="kifib" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="kih1" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="kih1a" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="kih1b" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="kih1d" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="kih1e" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="kiie" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="kitf" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="kitfa" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="kitfb" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="kiweea" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="kiweeb" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="ks20a" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="ks20b" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="ksaa" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="ksab" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="ksba" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="ksbb" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="ksea" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="kseb" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="ksia" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="ksib" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="kweea" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="kweeb" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="n20" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="pB" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="pBCKI" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="preMPF" COPASIkey="Metabolite_22"/>
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
  </ListOfUnitDefinitions>
</COPASI>
