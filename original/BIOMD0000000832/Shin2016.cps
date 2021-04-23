<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-10-10 10:29:28 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function_for_v1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc11*aEGFR*Akt/(Km11 + Akt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="kc11" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="aEGFR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="Akt" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="Km11" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function_for_v2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V11*pAkt/(Km12 + pAkt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="V11" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="pAkt" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_265" name="Km12" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function_for_v18" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc92*iRaf1*RasGTP/(Km93 + iRaf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="kc92" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="iRaf1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="RasGTP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="Km93" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function_for_v24" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V121*RasGTP/(Km122 + RasGTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="V121" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="RasGTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="Km122" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function_for_v25" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc131*aRaf1*ERK/(Km131 + ERK)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="kc131" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="aRaf1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_271" name="ERK" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="Km131" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function_for_v26" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V131*ppERK/(Km132 + ppERK)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="V131" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="ppERK" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="Km132" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function_for_v3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc12*Akt*RasGTP/(Km13 + Akt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="kc12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="Akt" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="RasGTP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="Km13" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function_for_v4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V21*aMST2/(Km21 + aMST2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="V21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="aMST2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="Km21" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function_for_v5" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V22*iMST2/(Km22 + iMST2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="V22" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="iMST2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="Km22" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function_for_v6" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka21*MST2^2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="ka21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="MST2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function_for_v9" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kd31*dMST2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="kd31" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="dMST2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function_for_v10" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka41*aMST2*RASSF1A-kd41*aMST2uRASSF1A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="ka41" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="aMST2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="RASSF1A" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="kd41" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="aMST2uRASSF1A" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function_for_v11" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V51*MST2uRASSF1A/(Km51 + MST2uRASSF1A)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="V51" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="MST2uRASSF1A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_302" name="Km51" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function_for_v12" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka71*iMST2*iRaf1-kd71*iRaf1uiMST2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="ka71" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="iMST2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="iRaf1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="kd71" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="iRaf1uiMST2" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function_for_v13" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V81*aLATS1/(Km81 + aLATS1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="V81" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="aLATS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="Km81" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function_for_v17" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc91*aLATS1*Raf1/(Km92 + Raf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="kc91" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="aLATS1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_309" name="Raf1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="Km92" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function_for_v19" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V101*aRaf1/(Km101 + aRaf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="V101" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="aRaf1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="Km101" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function_for_v20" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V102*Raf1/(Km102 + Raf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="V102" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="Raf1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="Km102" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function_for_v16" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V91*Raf1/(Km91 + Raf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="V91" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="Raf1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="Km91" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function_for_v21" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V111*ipRaf1/(Km111 + ipRaf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="V111" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="ipRaf1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="Km111" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function_for_v22" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc112*aRaf1*ppERK/(Km112 + aRaf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="kc112" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="aRaf1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="ppERK" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_330" name="Km112" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function_for_v23" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:18:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc121*aEGFR*RasGDP/(Km121 + RasGDP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="kc121" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="aEGFR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="RasGDP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_331" name="Km121" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function_for_v7" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:19:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka22*MST2*RASSF1A-kd21*MST2uRASSF1A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="ka22" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="MST2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_336" name="RASSF1A" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="kd21" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="MST2uRASSF1A" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function_for_v8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:21:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc21*MST2*pAkt/(Km23 + MST2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="kc21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="MST2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="pAkt" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_341" name="Km23" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function_for_v14" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:23:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc81*aMST2*LATS1/(Km82 + LATS1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_347" name="kc81" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="aMST2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_345" name="LATS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="Km82" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function_for_v15" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:23:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc82*aMST2uRASSF1A*LATS1/(Km83 + LATS1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="kc82" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="aMST2uRASSF1A" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="LATS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="Km83" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0035329"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:NCIT:C38834"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:NCIT:C38981"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:27527217"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T10:44:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>johannes.p.meyer@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Meyer</vCard:Family>
            <vCard:Given>Johannes</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This is a mathematical model describing Hippo signalling pathway activity. It includes descriptions of crosstalk with the Akt and ERK MAPK pathways; crosstalk activity is described using complex regulatory mechanisms comprised of competitive protein-protein interactions and phosphorylation mediated feedback loops.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Akt" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:23:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:pr:PR:000029189"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="RASSF1A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:20:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C60667"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="MST2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:02:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C131221"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="dMST2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:27:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C131221"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="aMST2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:27:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C131221"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="aMST2uRASSF1A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:27:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C131221"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C60667"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="MST2uRASSF1A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:02:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C60667"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C131221"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="iMST2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:28:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C131221"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="iRaf1uiMST2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:28:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C131221"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="aLATS1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:23:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000009686"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="LATS1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:pr:PR:000009686"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:28:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="iRaf1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:28:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Raf1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:24:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="aRaf1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:27:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="ipRaf1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:28:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="RasGDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:41:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:ncit:C25784"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="RasGTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:41:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:ncit:C25784"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="ERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:27:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P27361"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="ppERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:25:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27361"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="pAkt" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T16:02:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000029189"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="kc_121" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="V_121" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="kc_11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kc_12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="V_11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kc_92" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="V_91" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="V_102" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="V_101" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kc_131" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-25T09:37:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="V_131" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Km_132" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T14:37:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Km_23" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Km_22" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kd_71" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kd_31" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Km_21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="kd_21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kd_41" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Km_51" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Km_82" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Km_83" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Km_81" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Km_112" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Km_111" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Km_121" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Km_122" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Km_11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Km_13" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Km_12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Km_93" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Km_91" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Km_102" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Km_101" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:40:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Km_131" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Km_92" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="kc_21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="V_22" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="ka_71" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="ka_21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="V_21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="ka_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:51:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="ka_41" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="V_51" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kc_81" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kc_82" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="V_81" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="kc_112" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="V_111" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kc_91" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="aEGFR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-25T09:37:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="pAkt_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:51:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="aMST2_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="ppERK_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:51:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="aMST2_norm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:54:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aMST2],Reference=Concentration>+&lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aMST2uRASSF1A],Reference=Concentration>)/(&lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aMST2],Reference=InitialConcentration>+&lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aMST2uRASSF1A],Reference=InitialConcentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="pAkt_norm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:54:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[pAkt],Reference=Concentration>/&lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[pAkt_max],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="ppERK_norm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-09T13:57:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[ppERK],Reference=Concentration>/&lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ppERK_max],Reference=InitialValue>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="v1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:06:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5024" name="kc11" value="0.001149"/>
          <Constant key="Parameter_5022" name="aEGFR" value="500"/>
          <Constant key="Parameter_5021" name="Km11" value="51.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="v2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:06:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5020" name="V11" value="0.08687"/>
          <Constant key="Parameter_5019" name="Km12" value="0.01497"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="v3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5018" name="kc12" value="0.717"/>
          <Constant key="Parameter_5017" name="Km13" value="0.744"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="v4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
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
          <Constant key="Parameter_5016" name="V21" value="1414"/>
          <Constant key="Parameter_5015" name="Km21" value="427.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="v5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:07:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5014" name="V22" value="7511"/>
          <Constant key="Parameter_5013" name="Km22" value="816.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="v6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:07:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19901"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="ka21" value="4472"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="v7" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:36:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="ka22" value="0.0684"/>
          <Constant key="Parameter_5010" name="kd21" value="0.113"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="v8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:44:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="kc21" value="6684"/>
          <Constant key="Parameter_5008" name="Km23" value="0.0008313"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="v9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:01:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="kd31" value="0.6117"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="v10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:37:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="ka41" value="0.4237"/>
          <Constant key="Parameter_5005" name="kd41" value="1.226"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="v11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:39:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000216"/>
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
          <Constant key="Parameter_5004" name="V51" value="0.0005688"/>
          <Constant key="Parameter_5003" name="Km51" value="6.708"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="v12" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:39:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="ka71" value="28.12"/>
          <Constant key="Parameter_5001" name="kd71" value="0.0004886"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="v13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:39:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="V81" value="2261"/>
          <Constant key="Parameter_4999" name="Km81" value="0.08503"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="v14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:56:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="kc81" value="6189"/>
          <Constant key="Parameter_4997" name="Km82" value="3961"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="v15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:56:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="kc82" value="0.000293"/>
          <Constant key="Parameter_4995" name="Km83" value="22.26"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="v16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:57:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="V91" value="2.071"/>
          <Constant key="Parameter_4993" name="Km91" value="0.8821"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="v17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:57:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="kc91" value="0.1177"/>
          <Constant key="Parameter_4991" name="Km92" value="10.68"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="v18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:57:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="kc92" value="0.9203"/>
          <Constant key="Parameter_4989" name="Km93" value="0.9015"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="v19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T11:39:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="V101" value="994.8"/>
          <Constant key="Parameter_4987" name="Km101" value="457.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="v20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:57:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216"/>
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
          <Constant key="Parameter_4986" name="V102" value="317.3"/>
          <Constant key="Parameter_4985" name="Km102" value="3.197"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="v21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:57:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="V111" value="254.7"/>
          <Constant key="Parameter_4983" name="Km111" value="0.07678"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="v22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:57:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4982" name="kc112" value="0.002742"/>
          <Constant key="Parameter_4981" name="Km112" value="207.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="v23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:57:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1904477"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000535"/>
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
          <Constant key="Parameter_4980" name="kc121" value="0.2061"/>
          <Constant key="Parameter_4979" name="aEGFR" value="500"/>
          <Constant key="Parameter_4978" name="Km121" value="120.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="v24" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T13:58:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:1904476"/>
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
          <Constant key="Parameter_4977" name="V121" value="1027"/>
          <Constant key="Parameter_4976" name="Km122" value="297.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="v25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:00:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000216"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="kc131" value="5.342"/>
          <Constant key="Parameter_4974" name="Km131" value="0.03676"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="v26" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:01:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000330"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="V131" value="995.3"/>
          <Constant key="Parameter_4972" name="Km132" value="151"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[Akt]" value="200" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[RASSF1A]" value="1.77" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[MST2]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[dMST2]" value="350" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aMST2]" value="185.59999999999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aMST2uRASSF1A]" value="113.90000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[MST2uRASSF1A]" value="0.23000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[iMST2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[iRaf1uiMST2]" value="200" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aLATS1]" value="192.19999999999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[LATS1]" value="7.7999999999999998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[iRaf1]" value="750" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[Raf1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[aRaf1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[ipRaf1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[RasGDP]" value="300" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[RasGTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[ERK]" value="3000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[ppERK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Compartments[compartment],Vector=Metabolites[pAkt]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_121]" value="0.20610000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_121]" value="1027" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_11]" value="0.0011490000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_12]" value="0.71699999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_11]" value="0.086870000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_92]" value="0.92030000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_91]" value="2.0710000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_102]" value="317.30000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_101]" value="994.79999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_131]" value="5.3419999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_131]" value="995.29999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_132]" value="151" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_23]" value="0.00083129999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_22]" value="816.20000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_71]" value="0.00048859999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_31]" value="0.61170000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_21]" value="427.30000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_21]" value="0.113" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_41]" value="1.226" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_51]" value="6.7080000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_82]" value="3961" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_83]" value="22.260000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_81]" value="0.085029999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_112]" value="207.09999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_111]" value="0.076780000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_121]" value="120.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_122]" value="297.19999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_11]" value="51.210000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_13]" value="0.74399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_12]" value="0.014970000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_93]" value="0.90149999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_91]" value="0.8821" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_102]" value="3.1970000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_101]" value="457.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_131]" value="0.036760000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_92]" value="10.68" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_21]" value="6684" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_22]" value="7511" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_71]" value="28.120000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_21]" value="4472" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_21]" value="1414" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_22]" value="0.068400000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_41]" value="0.42370000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_51]" value="0.00056879999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_81]" value="6189" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_82]" value="0.00029300000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_81]" value="2261" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_112]" value="0.0027420000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_111]" value="254.69999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_91]" value="0.1177" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[aEGFR]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[pAkt_max]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[aMST2_max]" value="94.799999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ppERK_max]" value="226.84" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[aMST2_norm]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[pAkt_norm]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ppERK_norm]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=kc11" value="0.0011490000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=aEGFR" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[aEGFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=Km11" value="51.210000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=V11" value="0.086870000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=Km12" value="0.014970000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kc12" value="0.71699999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=Km13" value="0.74399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=V21" value="1414" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=Km21" value="427.30000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=V22" value="7511" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=Km22" value="816.20000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=ka21" value="4472" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=ka22" value="0.068400000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=kd21" value="0.113" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v8],ParameterGroup=Parameters,Parameter=kc21" value="6684" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v8],ParameterGroup=Parameters,Parameter=Km23" value="0.00083129999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=kd31" value="0.61170000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_31],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=ka41" value="0.42370000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_41],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=kd41" value="1.226" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_41],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=V51" value="0.00056879999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_51],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=Km51" value="6.7080000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_51],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=ka71" value="28.120000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ka_71],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=kd71" value="0.00048859999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kd_71],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v13],ParameterGroup=Parameters,Parameter=V81" value="2261" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_81],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v13],ParameterGroup=Parameters,Parameter=Km81" value="0.085029999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_81],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kc81" value="6189" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_81],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=Km82" value="3961" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_82],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v15],ParameterGroup=Parameters,Parameter=kc82" value="0.00029300000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_82],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v15],ParameterGroup=Parameters,Parameter=Km83" value="22.260000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_83],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v16],ParameterGroup=Parameters,Parameter=V91" value="2.0710000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_91],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v16],ParameterGroup=Parameters,Parameter=Km91" value="0.8821" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_91],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v17],ParameterGroup=Parameters,Parameter=kc91" value="0.1177" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_91],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v17],ParameterGroup=Parameters,Parameter=Km92" value="10.68" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_92],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v18],ParameterGroup=Parameters,Parameter=kc92" value="0.92030000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_92],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v18],ParameterGroup=Parameters,Parameter=Km93" value="0.90149999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_93],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v19],ParameterGroup=Parameters,Parameter=V101" value="994.79999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_101],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v19],ParameterGroup=Parameters,Parameter=Km101" value="457.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_101],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v20],ParameterGroup=Parameters,Parameter=V102" value="317.30000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_102],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v20],ParameterGroup=Parameters,Parameter=Km102" value="3.1970000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_102],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v21],ParameterGroup=Parameters,Parameter=V111" value="254.69999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_111],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v21],ParameterGroup=Parameters,Parameter=Km111" value="0.076780000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_111],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kc112" value="0.0027420000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_112],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=Km112" value="207.09999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_112],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=kc121" value="0.20610000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_121],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=aEGFR" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[aEGFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=Km121" value="120.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_121],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v24],ParameterGroup=Parameters,Parameter=V121" value="1027" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_121],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v24],ParameterGroup=Parameters,Parameter=Km122" value="297.19999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_122],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v25],ParameterGroup=Parameters,Parameter=kc131" value="5.3419999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[kc_131],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v25],ParameterGroup=Parameters,Parameter=Km131" value="0.036760000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_131],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v26],ParameterGroup=Parameters,Parameter=V131" value="995.29999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[V_131],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Reactions[v26],ParameterGroup=Parameters,Parameter=Km132" value="151" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[Km_132],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0.20000000000000001 185.59999999999999 0 0 192.19999999999999 200 0 300 3000 0.23000000000000001 750 113.90000000000001 0 7.7999999999999998 200 0 0 350 0 1.77 1 0 0 1 0.20610000000000001 1027 0.0011490000000000001 0.71699999999999997 0.086870000000000003 0.92030000000000001 2.0710000000000002 317.30000000000001 994.79999999999995 5.3419999999999996 995.29999999999995 151 0.00083129999999999999 816.20000000000005 0.00048859999999999995 0.61170000000000002 427.30000000000001 0.113 1.226 6.7080000000000002 3961 22.260000000000002 0.085029999999999994 207.09999999999999 0.076780000000000001 120.5 297.19999999999999 51.210000000000001 0.74399999999999999 0.014970000000000001 0.90149999999999997 0.8821 3.1970000000000001 457.5 0.036760000000000001 10.68 6684 7511 28.120000000000001 4472 1414 0.068400000000000002 0.42370000000000002 0.00056879999999999995 6189 0.00029300000000000002 2261 0.0027420000000000001 254.69999999999999 0.1177 500 200 94.799999999999997 226.84 
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
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.12"/>
        <Parameter name="Duration" type="float" value="120"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
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
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
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
    <PlotSpecification name="Shin2016_Figure_2_RASFF1A" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[aMST2_norm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[aMST2_norm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[pAkt_norm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[pAkt_norm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ppERK_norm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling,Vector=Values[ppERK_norm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Shin2016.xml">
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="ERK" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Function_for_v1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_v10" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_v11" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_v12" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_v13" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_v14" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_v15" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_v16" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_v17" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_v18" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_v19" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_v2" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_v20" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_v21" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_v22" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_v23" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_v24" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_v25" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_v26" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_v3" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_v4" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_v5" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_v6" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_v7" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_v8" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_v9" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Km_101" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Km_102" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Km_11" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="Km_111" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="Km_112" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Km_12" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Km_121" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Km_122" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="Km_13" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Km_131" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Km_132" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Km_21" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Km_22" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Km_23" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Km_51" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Km_81" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Km_82" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Km_83" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Km_91" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Km_92" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Km_93" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="LATS1" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="MST2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="MST2uRASSF1A" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="RASSF1A" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Raf1" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="RasGDP" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="RasGTP" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="V_101" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="V_102" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="V_11" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="V_111" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="V_121" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="V_131" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="V_21" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="V_22" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="V_51" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="V_81" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="V_91" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="aEGFR" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="aLATS1" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="aMST2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="aMST2_max" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="aMST2_norm" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="aMST2uRASSF1A" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="aRaf1" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="dMST2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="iMST2" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="iRaf1" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="iRaf1uiMST2" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="ipRaf1" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="ka_21" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="ka_22" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="ka_41" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="ka_71" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kc_11" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="kc_112" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="kc_12" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kc_121" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="kc_131" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kc_21" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="kc_81" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kc_82" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kc_91" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="kc_92" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kd_21" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="kd_31" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kd_41" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kd_71" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="pAkt" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="pAkt_max" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="pAkt_norm" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="ppERK" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="ppERK_max" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="ppERK_norm" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="v1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="v10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="v11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="v12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="v13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="v14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="v15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="v16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="v17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="v18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="v19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="v2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="v20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="v21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="v22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="v23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="v24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="v25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="v26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="v3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="v4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="v5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="v6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="v7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="v8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="v9" COPASIkey="Reaction_8"/>
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
    <UnitDefinition key="Unit_32" name="minute" symbol="min">
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
